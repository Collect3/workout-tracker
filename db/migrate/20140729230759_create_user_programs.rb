class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.integer :programId
      t.integer :userId

      t.timestamps
    end
  end
end
