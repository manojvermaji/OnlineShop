class RemoveUsersIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :users_id
  end
end
