class AddTableImagesForPioneers < ActiveRecord::Migration[5.1]
  def change
    create_table :pioneer_images do |t|
      t.string :img_url
      t.belongs_to :pioneer, null: false, index: true
    end
  end
end
