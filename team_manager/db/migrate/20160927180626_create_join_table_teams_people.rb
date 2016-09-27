class CreateJoinTableTeamsPeople < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :people do |t|
      # t.index [:team_id, :person_id]
      # t.index [:person_id, :team_id]
    end
  end
end
