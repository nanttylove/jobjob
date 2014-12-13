class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.integer :sex_id
      t.string :fname
      t.string :lname
      t.string :religion
      t.string :originnationality
      t.string :nationality
      t.string :nationalid
      t.string :disablerid
      t.datetime :birthdate
      t.integer :disability_ids
      t.string :phone
      t.text :address
      t.text :education
      t.text :training
      t.text :contactperson

      t.timestamps null: false
    end
  end
end
