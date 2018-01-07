class AddMainToGameImages < ActiveRecord::Migration[5.1]
  def change
    add_column :game_images, :main, :boolean, null: false, default: false
  end
end
