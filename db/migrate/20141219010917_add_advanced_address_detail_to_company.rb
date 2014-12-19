class AddAdvancedAddressDetailToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :address_village, :string
    add_column :companies, :address_village_no, :string
    add_column :companies, :address_soi, :string
    add_column :companies, :address_road, :string
    add_column :companies, :address_postal_code, :string
    add_column :companies, :province_id, :integer
    add_column :companies, :address_amphur, :string
    add_column :companies, :address_tambon, :string
  end
end
