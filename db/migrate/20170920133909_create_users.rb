class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :category
      t.text :bio
      t.string :role
      t.string :email
      t.string :linkedin
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
