class AddTableImagesForSolarSystemObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :solar_system_object_images do |t|
      t.string :img_url
      t.belongs_to :solar_system_object, null: false, index: true
    end
  end
end
