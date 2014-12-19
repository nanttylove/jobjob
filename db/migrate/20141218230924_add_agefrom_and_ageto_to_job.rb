class AddAgefromAndAgetoToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :agefrom, :integer
    add_column :jobs, :ageto, :integer
  end
end
