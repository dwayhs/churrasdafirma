class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :when
      t.text :description
      t.string :where

      t.timestamps null: false
    end
  end
end
