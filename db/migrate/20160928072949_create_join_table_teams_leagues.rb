class CreateJoinTableTeamsLeagues < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :leagues do |t|
      # t.index [:team_id, :league_id]
      # t.index [:league_id, :team_id]
    end
  end
end
