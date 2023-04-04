class AddCategoryToSnows < ActiveRecord::Migration[6.1]
  def change
    add_column :snows, :category, :string
  end
end
