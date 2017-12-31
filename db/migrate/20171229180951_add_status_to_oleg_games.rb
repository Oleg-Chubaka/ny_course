class AddStatusToOlegGames < ActiveRecord::Migration[5.1]
  def change
    add_column :oleg_games, :status, :boolean, null: false, default: false
  end
end
