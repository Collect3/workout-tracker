class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.date :dateOfBirth
      t.binary :gender
      t.integer :appSkinId

      t.timestamps
    end
  end
end
