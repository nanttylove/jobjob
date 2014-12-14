# == Schema Information
#
# Table name: disabilities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Disability < ActiveRecord::Base
  has_and_belongs_to_many :resumes
  has_and_belongs_to_many :jobs
end
