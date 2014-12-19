class AddWagefromAndWagetoToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :wagefrom, :integer
    add_column :jobs, :wageto, :integer
  end
end
