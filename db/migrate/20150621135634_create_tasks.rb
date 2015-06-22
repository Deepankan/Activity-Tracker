class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :user
      t.string :task_name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :planned_hours
      t.string :status
      t.timestamps null: false
    end
  end
end
