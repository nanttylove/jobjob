class AddDetailToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :detail, :text
  end
end
