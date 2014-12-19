class RemoveWageFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :wage
  end
end
