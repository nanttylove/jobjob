class AddAmountToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :amount, :integer
  end
end
