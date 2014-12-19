class RemoveDocumentAndApplyFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :document
    remove_column :jobs, :apply
  end
end
