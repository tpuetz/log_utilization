class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.string :primary_issue
      t.string :case_manager
      t.boolean :health_insurance
      t.boolean :performance_problem
      t.integer :employee_id

      t.timestamps
    end
  end
end
