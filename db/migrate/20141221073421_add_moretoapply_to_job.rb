class AddMoretoapplyToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :moretoapply, :string
  end
end
