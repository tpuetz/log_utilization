class CreateCaseNotes < ActiveRecord::Migration
  def change
    create_table :case_notes do |t|
      t.string :type
      t.text :note
      t.string :counselor
      t.integer :case_id

      t.timestamps
    end
  end
end
