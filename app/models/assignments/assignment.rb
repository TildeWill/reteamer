module Assignments
  class Assignment
    include ActiveModel::Model
    delegate :role_on_team, :active, :active?, :effective_at, to: :model

    def person_key
      model&.person_proto_id
    end

    def team_id
      model&.team_proto_id
    end

    def self.new_from_model(model)
      wrapper = Assignment.new
      wrapper.send(:model=, model)
      wrapper
    end

    def self.create(effective_date, attributes)
      model = Model.new({
        person_proto_id: attributes[:person_key],
        team_proto_id: attributes[:team_id],
        role_on_team: attributes[:role_on_team],
        active: attributes[:active] || true,
      })
      model.meta = Meta.new_prototype(effective_date, Model)
      Assignment.new_from_model(model)
    end

    def update(effective_date, attributes)
      new_attributes = {
        person_proto_id: attributes.fetch(:person_key, person_key),
        team_proto_id: attributes.fetch(:team_id, team_id),
        role_on_team: attributes.fetch(:role_on_team, role_on_team),
        active: attributes.fetch(:active, active)
      }
      new_model = Model.new(new_attributes)

      ApplicationRecord.transaction do
        new_model.meta = Meta.update_prototype(model.proto_id, effective_date, Model)
        new_model.save
      end

      self.model = new_model
      return self
    end

    def self.find_for(effective_date)
      models = Model.find_for(effective_date)
      models.map { |model| Assignment.new_from_model(model) }
    end

    def self.destroy_all
      Model.destroy_all
    end

    private

    attr_accessor :model
  end
end
