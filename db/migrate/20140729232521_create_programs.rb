class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :program_image_id

      t.timestamps
    end
  end
end
