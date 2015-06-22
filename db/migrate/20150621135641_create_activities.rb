class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :task
      t.belongs_to :user
      t.integer :duration_in_hours
      t.string :description
      t.timestamps null: false
    end
  end
end
