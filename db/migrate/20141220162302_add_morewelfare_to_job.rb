class AddMorewelfareToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :morewelfare, :string
  end
end
