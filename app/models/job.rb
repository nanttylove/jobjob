class Job < ActiveRecord::Base
  belongs_to :province
  belongs_to :user
  has_and_belongs_to_many :sexes
  has_and_belongs_to_many :disabilities
  has_and_belongs_to_many :welfares
end
