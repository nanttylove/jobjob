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

	validates_presence_of :sex_id
	validates_presence_of :fname
	validates_presence_of :lname
	validates_presence_of :religion
	validates_presence_of :originnationality
	validates_presence_of :nationality
	validates_presence_of :nationalid
	validates_presence_of :disablerid
	validates_presence_of :birthdate
	validates_presence_of :disability_ids
	validates_presence_of :phone
	validates_presence_of :address
	validates_presence_of :education
	validates_presence_of :training
	validates_presence_of :contactperson

	validates_length_of :nationalid, is: 13
	validates_length_of :disablerid, is: 13
	validates_length_of :phone, maximum: 10
end
