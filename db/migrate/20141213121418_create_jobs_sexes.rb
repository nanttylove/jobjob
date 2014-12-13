class CreateJobsSexes < ActiveRecord::Migration
  def change
    create_table :jobs_sexes, id: false do |t|
      t.integer :job_id
      t.integer :sex_id
    end
  end
end
