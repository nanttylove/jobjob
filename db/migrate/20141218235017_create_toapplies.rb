class CreateToapplies < ActiveRecord::Migration
  def change
    create_table :toapplies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
