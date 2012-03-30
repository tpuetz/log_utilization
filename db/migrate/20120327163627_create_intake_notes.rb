class CreateIntakeNotes < ActiveRecord::Migration
  def change
    create_table :intake_notes do |t|
      t.string :note_type
      t.text :note
      t.string :counselor
      t.integer :intake_id

      t.timestamps
    end
  end
end
