# == Schema Information
#
# Table name: resumes
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  sex_id            :integer
#  fname             :string
#  lname             :string
#  religion          :string
#  originnationality :string
#  nationality       :string
#  nationalid        :string
#  disablerid        :string
#  birthdate         :datetime
#  disability_ids    :integer
#  phone             :string
#  address           :text
#  education         :text
#  training          :text
#  contactperson     :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Resume < ActiveRecord::Base
  belongs_to :user
  belongs_to :sex
  has_and_belongs_to_many :disabilities
  has_many :jobs, through: :disabilities
end
