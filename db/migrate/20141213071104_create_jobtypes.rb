class CreateJobtypes < ActiveRecord::Migration
  def change
    create_table :jobtypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
