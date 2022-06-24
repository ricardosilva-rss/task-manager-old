class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :concluded
      t.datetime :start_date
      t.datetime :end_date
      t.string :address
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
