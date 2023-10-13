class CreateCompletedTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_tasks do |t|
      t.string :name
      t.text :description
      t.string :category
      t.date :duedate

      t.timestamps
    end
  end
end
