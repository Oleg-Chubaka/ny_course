class CreateIlyasTables < ActiveRecord::Migration[5.1]
  def change
    create_table :ilya_teams do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.integer :year_of_foundation, null: false
      t.string :short_info
      t.string :full_info
      t.string :link_to_source
      t.string :img_url
      t.string :manager, null: false
    end

    create_table :divisions do |t|
      t.string :name, null: false
      t.string :info
      t.string :link_to_source
      t.string :img_url
      t.belongs_to :ilya_team, null: false, index: true
    end

    create_table :partners do |t|
      t.string :name, null: false
      t.string :link_to_source
      t.belongs_to :ilya_team, null: false, index: true
    end
  end
end
