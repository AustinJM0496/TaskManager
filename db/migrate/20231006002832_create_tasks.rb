class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.integer :order
      t.datetime :duedate
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
