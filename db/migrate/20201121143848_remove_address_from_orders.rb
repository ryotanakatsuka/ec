class RemoveAddressFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :address_id, :integer
  end
end
