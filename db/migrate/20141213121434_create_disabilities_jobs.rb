class CreateDisabilitiesJobs < ActiveRecord::Migration
  def change
    create_table :disabilities_jobs, id: false do |t|
      t.integer :disability_id
      t.integer :job_id
    end
  end
end
