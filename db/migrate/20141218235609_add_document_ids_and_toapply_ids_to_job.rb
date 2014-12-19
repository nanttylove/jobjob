class AddDocumentIdsAndToapplyIdsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :document_ids, :integer
    add_column :jobs, :toapply_ids, :integer
  end
end
