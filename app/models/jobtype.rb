# == Schema Information
#
# Table name: jobtypes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Jobtype < ActiveRecord::Base
  has_many :jobs
end
