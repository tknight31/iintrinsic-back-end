class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :current_status, default: 'pending'

      t.timestamps
    end
  end
end
