class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.integer :sex_ids
      t.integer :disability_ids
      t.integer :welfare_ids
      t.string :organizationname
      t.string :branch
      t.text :address
      t.integer :province_id
      t.string :education
      t.string :age
      t.string :position
      t.text :info
      t.integer :jobtype_id
      t.string :wage
      t.text :document
      t.text :apply

      t.timestamps null: false
    end
  end
end
