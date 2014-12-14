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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
