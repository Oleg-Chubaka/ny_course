class CreateAlekseysTables < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.string :foundation_date, null: false
      t.string :trener, null: false
      t.string :rating, null: false
      t.text :notes, null: false
    end

    create_table :best_players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.belongs_to :team, null: false, index: true
    end
  end
end