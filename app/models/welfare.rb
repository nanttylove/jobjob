# == Schema Information
#
# Table name: welfares
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Welfare < ActiveRecord::Base
  has_and_belongs_to_many :jobs
end
