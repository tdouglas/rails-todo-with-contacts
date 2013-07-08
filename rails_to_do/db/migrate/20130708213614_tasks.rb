class Tasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.boolean :urgent
  end

  def down
    drop_table :tasks
  end
end
