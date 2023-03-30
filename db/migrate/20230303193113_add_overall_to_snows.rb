class AddOverallToSnows < ActiveRecord::Migration[6.1]
  def change
    add_column :snows, :overall, :integer
  end
end
