class CreateJobsToapplies < ActiveRecord::Migration
  def change
    create_table :jobs_toapplies, id: false do |t|
      t.integer :job_id
      t.integer :toapply_id
    end
  end
end
