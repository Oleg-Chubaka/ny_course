class AddTableImagesForTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :team_images do |t|
      t.string :img_url
      t.belongs_to :team, null: false, index: true
    end
  end
end
