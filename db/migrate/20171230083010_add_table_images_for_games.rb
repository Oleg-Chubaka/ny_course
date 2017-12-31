class AddTableImagesForGames < ActiveRecord::Migration[5.1]
  def change
    create_table :game_images do |t|
      t.string :img_url
      t.belongs_to :oleg_game, null: false, index: true
    end
  end
end
