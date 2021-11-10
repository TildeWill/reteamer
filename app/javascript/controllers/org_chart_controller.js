import { Controller } from "@hotwired/stimulus"
import {TeamChart} from '../team_chart';
import * as d3 from "d3"
import { emitDatePickedEvent } from "../event_emitter";

export default class extends Controller {

  exportSvg() {
    this.chart.fit();
    this.chart.exportSvg()
  }

  fit() {
    this.chart.fit();
  }

  handleNewOrgData(event) {
    this.orgData = event.detail.orgData;
    this.chart
      .data(this.orgData.people)
      .connections(this.orgData.connections)
      .render()
      .expandAll()

    const self = this;
    d3.selectAll("g.nodes-wrapper .person-node")
      .on("mouseover", function(event, d) {
        self.handleMouseOver(this, d);
      })
      .on("mouseout", function(event, d) {
        self.handleMouseOut(this, d);
      })
      .call(d3.drag()
        .on("start", function(event, d) {
          self.initiateDrag(d, this)
        })
        .on("drag", function(event, d) {
          let [newX, newY] = self.chart.getCoords(this)
          d3.select(this).attr("transform", "translate(" + (newX+event.dx) + "," + (newY+event.dy) + ")");
        })
        .on("end", function(event, d) {
          self.endDrag(this);
        })
      )


    if(this.firstRender) {
      const {svg, zoomBehavior} = this.chart.getChartState();
      svg.transition().call(zoomBehavior.translateBy, 0, -200)
      this.firstRender = false
    }
  }

  handleCancelChange(event) {
    const attrs = this.chart.getChartState()
    this.chart.restoreNodePosition(d3.select(this.chart.getDraggingNode()), attrs.duration, this.dragStartX, this.dragStartY);
    this.chart.finalizeDrop()
  }

  async handleCompleteChange(event) {
    const response = await fetch("/reteamer_api/people/update_supervisor", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      redirect: 'follow',
      body: JSON.stringify(
        {
          "person": {
            "effective_date": event.detail.selectedDate,
            "supervisor_key": this.dropped.supervisor_key,
            "key": this.dropped.person_key
          }
        }
      )
    });
    this.chart.finalizeDrop()
    emitDatePickedEvent(event.detail.selectedDate)
  }

  handleMouseOver(domNode, d) {
    this.chart.setDestinationDatum(d);
    if(this.chart.getDraggingDatum()) {
      d3.select(domNode).classed("drop-target", true)
    }
  };

  handleMouseOut(domNode, d) {
    d3.select(domNode).classed("drop-target", false)
    if(this.chart.getDraggingDatum()) {
      this.chart.setDestinationDatum(null);
    }
  };

  initiateDrag(d, domNode) {
    this.chart.setDraggingDatum(d);
    this.chart.setDraggingNode(domNode);

    let startCoords = this.chart.getCoords(domNode)
    this.dragStartX = startCoords[0]
    this.dragStartY = startCoords[1]
    const node = d3.select(domNode);
    node
      .attr('pointer-events', 'none')
      .classed('active-drag', true)
    d3.selectAll('g.node')
      .filter((group) => group.id === d.id)
      .raise()
  }

  endDrag(domNode) {
    d3.select(domNode)
      .attr('pointer-events', '') // restore the mouseover event or we won't be able to drag a 2nd time
      .classed("active-drag", false)

    const attrs = this.chart.getChartState()
    if (this.chart.getDestinationDatum() !== null) {
      const person_key = this.chart.getDraggingDatum().data.id;
      const supervisor_key = this.chart.getDestinationDatum().data.id
      this.dropped = {person_key: person_key, supervisor_key: supervisor_key}
      const personDroppedEvent = new CustomEvent("personDropped",
        {
          detail: {
            person_key: person_key,
            supervisor_key: supervisor_key
          }
        }
      )
      window.dispatchEvent(personDroppedEvent)
    } else {
      this.chart.restoreNodePosition(d3.select(domNode), attrs.duration, this.dragStartX, this.dragStartY);
      this.chart.finalizeDrop()
    }
  }

  avatarDiameter() { return 60; }

  avatarRadius() { return this.avatarDiameter()/2; }

  personNodeWidth() { return 250; }

  personNodeHeight() {return 190;}

  async connect() {
    this.firstRender = true;
    const container = document.createElement("div");
    container.className = 'chart-container'
    this.element.appendChild(container);

    const self = this;
    this.chart = new TeamChart()
      .container('.chart-container')
      .connectionsUpdate(function (d, i, arr) {
        d3.select(this)
          .attr('stroke', (d) => '#CCCCCC')
          .attr('stroke-linecap', 'round')
          .attr('stroke-width', (d) => '2')
          .attr('pointer-events', 'none')
          .attr('stroke-dasharray', '20, 20');
      })
      .nodeWidth(d => 250)
      .compact(false)
      .layout("top") // "left", "right", "top", "bottom"
      .initialZoom(0.7)
      .nodeHeight(d => 200)
      .childrenMargin(d => 40)
      .buttonContent(({ node, state }) => {
        return `<div class="${node.depth == 0 ? "fake-root-node" : ""}" style="px;color:#716E7B;border-radius:5px;padding:4px;font-size:10px;margin:auto auto;background-color:white;border: 1px solid #E4E2E9"> <span style="font-size:9px">${
          node.children
            ? `<i class="fas fa-angle-up"></i>`
            : `<i class="fas fa-angle-down"></i>`
        }</span> ${node.data._totalSubordinates}  </div>`;
      })
      .linkUpdate(function (d, i, arr) {
        d3.select(this)
          .attr("stroke", d => d.data._upToTheRootHighlighted ? '#152785' : 'lightgray')
          .attr("stroke-width", d => d.data._upToTheRootHighlighted ? 5 : 2)
          .classed("fake-root-node", d => d.depth == 1)

        if (d.data._upToTheRootHighlighted) {
          d3.select(this).raise()
        }
      })
      .compactMarginBetween(d => 15)
      .compactMarginPair(d => 80)
      .nodeContent(function(d, i, nodes, attrs) {
        d3.select(this).html(d => {
          const member = d.data;
          return `
          <g class="person-node ${d.depth == 0 ? "fake-root-node" : ""}" transform="translate(0,0)">
            <rect class="person-box" width="${self.personNodeWidth()}" height="${self.personNodeHeight()-self.avatarRadius()}" y="${self.avatarRadius()}" />
            <rect class="person-bar ${member.type}" width="${self.personNodeWidth()}" y="${self.avatarRadius()}" />
            <clipPath id="clipCircle">
              <circle r="${self.avatarRadius()}" cx="${self.personNodeWidth()/2}" cy="${self.avatarRadius()}"/>
            </clipPath>
            <image href="${member.image_url || ''}" x="${self.personNodeWidth()/2 - self.avatarRadius()}" width="${self.avatarDiameter()}" height="${self.avatarDiameter()}" clip-path="url(#clipCircle)" />
            <text class="employment-id" x="${self.personNodeWidth()-15}" y="70">${member.employee_id}</text>
            <text class="person-name" x="${self.personNodeWidth()/2}" text-anchor="middle" y="90">${member.name}</text>
            <foreignObject  y="110" width="${self.personNodeWidth()}" height="40">
              <div class="person-title">${member.title}</div>
              ${d.data._directSubordinates > 0 ? `
                  <div style="display:flex;justify-content:space-between;padding-left:15px;padding-right:15px;">
                    <div > Manages:  ${d.data._directSubordinates} 👤</div>
                    <div > Oversees: ${d.data._totalSubordinates} 👤</div>
                  </div>` : ""
              }
            </foreignObject>
          </g>
        `});

        d3.selectAll("g.nodes-wrapper g.node")
          .selectAll(".person-node")
          .data(function(d) { return [d]; });
      })
  }
}
