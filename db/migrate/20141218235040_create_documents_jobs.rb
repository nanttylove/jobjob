class CreateDocumentsJobs < ActiveRecord::Migration
  def change
    create_table :documents_jobs, id: false do |t|
      t.integer :document_id
      t.integer :job_id
    end
  end
end
