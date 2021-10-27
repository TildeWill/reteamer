module ReteamerApi
  class PeopleController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token

    def update_supervisor
      effective_date = Date.parse(person_params[:effective_date])
      person = Entry.find_for(effective_date).where(versionable_type: People::Person.name).where(key: person_params[:key]).first.versionable.dup
      person.supervisor_key = person_params[:supervisor_key]
      Entry.create(effective_at: effective_date, key: person_params[:key], versionable: person)
    end

    def update_team
      effective_date = Date.parse(person_params[:effective_date])
      assignment = Entry.find_for(effective_date).where(versionable_type: Assignment.name).where(key: person_params[:key]).first.versionable.dup
      assignment.team_key = person_params[:team_key]
      Entry.create(effective_at: effective_date, key: person_params[:key], versionable: assignment)
    end

    private

    def person_params
      params.fetch(:person, {}).permit(:effective_date, :key, :supervisor_key, :team_key)
    end
  end
end
