class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string  :dish_name,          null: false
      t.string  :catch_copy
      t.integer :dish_portion_id,    null: false
      t.string  :step_1,             null: false
      t.string  :step_2
      t.string  :step_3
      t.string  :step_4
      t.string  :step_5
      t.string  :dish_point
      t.integer :genre_id,              null: false
      t.integer :season_id,             null: false
      t.integer :user_id,            foreign_key: true
      t.timestamps
    end
  end
end
