# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  branch     :string
#  address    :text
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
  belongs_to :user

	validates_presence_of :name
	validates_presence_of :address
	validates_presence_of :phone
end
