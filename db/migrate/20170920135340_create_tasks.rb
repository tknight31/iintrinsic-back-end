class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :completer_id
      t.integer :poster_id
      t.integer :project_id
      t.datetime :completed_date
      t.string :current_status, default: 'open'

      t.timestamps
    end
  end
end
