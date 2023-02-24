class AddDetailsToSnows < ActiveRecord::Migration[6.1]
  def change
    add_column :snows, :lat, :float
    add_column :snows, :lng, :float
  end
end
