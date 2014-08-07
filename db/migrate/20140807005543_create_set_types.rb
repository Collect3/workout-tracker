class CreateSetTypes < ActiveRecord::Migration
  def change
    create_table :set_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
