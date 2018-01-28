class AddTableImagesForBestPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :best_player_images do |t|
      t.string :img_url
      t.belongs_to :best_player, null: false, index: true
    end
  end
end
