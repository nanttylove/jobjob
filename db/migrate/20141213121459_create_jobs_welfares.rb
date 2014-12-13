class CreateJobsWelfares < ActiveRecord::Migration
  def change
    create_table :jobs_welfares, id: false do |t|
      t.integer :job_id
      t.integer :welfare_id
    end
  end
end
