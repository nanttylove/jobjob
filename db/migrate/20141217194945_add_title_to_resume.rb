class AddTitleToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :title, :string
  end
end
