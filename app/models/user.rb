class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  belongs_to :role
  has_many :articles
  has_many :jobs
  has_one :resume, dependent: :destroy
  has_one :company, dependent: :destroy
end
