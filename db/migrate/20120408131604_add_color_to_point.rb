class AddColorToPoint < ActiveRecord::Migration
  def change
    add_column :points, :color, :string
  end
end
