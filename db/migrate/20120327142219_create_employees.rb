class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :gender
      t.integer :age
      t.boolean :manager
      t.boolean :hr
      t.string :source
      t.integer :organization_id

      t.timestamps
    end
  end
end
