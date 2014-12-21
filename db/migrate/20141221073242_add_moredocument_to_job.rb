class AddMoredocumentToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :moredocument, :string
  end
end
