class RemoveAgeFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :age
  end
end
