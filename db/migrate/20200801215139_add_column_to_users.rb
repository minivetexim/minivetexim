class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
     add_column :users, :country, :string
     add_column :users, :business_type, :string
     add_column :users, :mobile_number, :string		
  end
end
