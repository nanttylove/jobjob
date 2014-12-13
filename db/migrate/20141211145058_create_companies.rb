class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :name
      t.string :branch
      t.text :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
