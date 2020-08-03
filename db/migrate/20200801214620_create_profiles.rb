class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :company_name
      t.string :about_company
      t.string :minimun_order
      t.string :target_country
      t.timestamps
    end
  end
end
