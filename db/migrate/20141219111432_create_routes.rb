class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :startStation
      t.string :endStation
      t.string :all

      t.timestamps
    end
  end
end
