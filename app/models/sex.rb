# == Schema Information
#
# Table name: sexes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sex < ActiveRecord::Base
  has_many :resumes
  has_many :users, through: :resumes
  has_and_belongs_to_many :jobs
end
