class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :first_name, null: false
      t.string :project_name
      t.timestamps null: false
    end
  end
end
