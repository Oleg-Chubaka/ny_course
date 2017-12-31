class CreateOlegsTables < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :tesera_url
    end

    create_table :oleg_games do |t|
      t.string :name, null: false
      t.text :review, null: false
      t.integer :price, null: false, default: 150
      t.integer :hours, null: false, default: 1
      t.float :rating, null: false
      t.belongs_to :author, null: false, index: true
      t.timestamps null: false
    end

    create_table :categories do |t|
      t.string :name, null: false
    end

    create_table :categories_oleg_games do |t|
      t.belongs_to :oleg_game, null: false
      t.belongs_to :category, null: false
    end
  end
end
