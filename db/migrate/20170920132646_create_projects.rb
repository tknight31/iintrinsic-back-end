class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :creator_id
      t.string :name
      t.string :category
      t.text :long_desc
      t.text :short_desc
      t.string :project_image
      t.string :project_link
      t.datetime :target_launch
      t.string :current_status, default: 'open'

      t.timestamps
    end
  end
end
