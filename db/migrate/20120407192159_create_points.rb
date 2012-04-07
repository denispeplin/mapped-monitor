class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :name

      t.timestamps
    end
  end
end
