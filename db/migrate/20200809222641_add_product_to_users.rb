class AddProductToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :product_name, :string
  end
end
