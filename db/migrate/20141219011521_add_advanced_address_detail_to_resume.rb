class AddAdvancedAddressDetailToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :address_village, :string
    add_column :resumes, :address_village_no, :string
    add_column :resumes, :address_soi, :string
    add_column :resumes, :address_road, :string
    add_column :resumes, :address_postal_code, :string
    add_column :resumes, :province_id, :integer
    add_column :resumes, :address_amphur, :string
    add_column :resumes, :address_tambon, :string
  end
end
