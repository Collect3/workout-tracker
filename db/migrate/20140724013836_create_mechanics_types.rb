class CreateMechanicsTypes < ActiveRecord::Migration
  def change
    create_table :mechanics_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
