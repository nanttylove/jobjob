class CreateWelfares < ActiveRecord::Migration
  def change
    create_table :welfares do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
