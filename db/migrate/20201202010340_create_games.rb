class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :sport
      t.string :gender
      t.string :level
      t.string :home_team
      t.string :visiting_team
      t.integer :max_capacity
      t.datetime :event_date
      t.integer :price
    end
  end
end