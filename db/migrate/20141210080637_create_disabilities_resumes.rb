class CreateDisabilitiesResumes < ActiveRecord::Migration
  def change
    create_table :disabilities_resumes, id: false do |t|
      t.integer :disability_id
      t.integer :resume_id
    end
  end
end
