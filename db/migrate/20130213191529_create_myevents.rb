class CreateMyevents < ActiveRecord::Migration
  def change
    create_table :myevents do |t|
      t.integer :athlete_id

      t.timestamps
    end
  end
end
