class Resume < ActiveRecord::Base
  belongs_to :user
  belongs_to :sex
  has_and_belongs_to_many :disabilities
end
