class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :emp_id
      t.string :emp_name
      t.string :dsg
      t.integer :sal
      t.string :loc
      t.timestamps
    end
  end
end
