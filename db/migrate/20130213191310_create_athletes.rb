class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :age
      t.string :pic_url

      t.timestamps
    end
  end
end
