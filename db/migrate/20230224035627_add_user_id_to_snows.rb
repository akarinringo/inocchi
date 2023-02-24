class AddUserIdToSnows < ActiveRecord::Migration[6.1]
  def change
    add_column :snows, :user_id, :integer
  end
end
