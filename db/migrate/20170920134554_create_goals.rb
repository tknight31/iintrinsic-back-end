class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.integer :project_id
      t.datetime :completed_date
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
