class CreateAlexesTables < ActiveRecord::Migration[5.1]
  def change
    create_table :pioneers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
    end

    create_table :solar_system_objects do |t|
      t.string :name, null: false
      t.string :opening_date, null: false
      t.string :distance_from_sun, null: false
      t.string :distance_from_earth, null: false
      t.string :weight, null: false
      t.text :notes, null: false
      t.belongs_to :pioneer, null: false, index: true
    end
  end
end