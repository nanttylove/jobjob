# == Schema Information
#
# Table name: jobs
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  sex_ids          :integer
#  disability_ids   :integer
#  welfare_ids      :integer
#  organizationname :string
#  branch           :string
#  address          :text
#  province_id      :integer
#  education        :string
#  age              :string
#  position         :string
#  info             :text
#  jobtype_id       :integer
#  wage             :string
#  document         :text
#  apply            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  phone            :string
#  amount           :integer
#

class Job < ActiveRecord::Base
  belongs_to :province
  belongs_to :user
  belongs_to :jobtype
  has_many :resumes, through: :disabilities
  has_and_belongs_to_many :sexes
  has_and_belongs_to_many :disabilities
  has_and_belongs_to_many :welfares
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :toapplies

  scope :jobtype, -> (jobtype) { where jobtype: jobtype }
  scope :province, -> (province) { where province: province }

end
