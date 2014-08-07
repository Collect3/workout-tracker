class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.integer :exercise_id
      t.text :instruction
      t.integer :step_number
      t.boolean :is_tip

      t.timestamps
    end
  end
end
