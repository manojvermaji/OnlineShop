class ChangeColumnNameInOrderItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :order_items, :product, :product_id
  end
end
