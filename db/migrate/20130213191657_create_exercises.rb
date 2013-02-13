class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :target_distance
      t.integer :actual_distance
      t.integer :week
      t.integer :myevent_id
      t.integer :athlete_id

      t.timestamps
    end
  end
end
