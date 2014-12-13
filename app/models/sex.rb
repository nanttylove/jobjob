class Sex < ActiveRecord::Base
  has_many :resumes
  has_many :users, through: :resumes
  has_and_belongs_to_many :jobs
end
