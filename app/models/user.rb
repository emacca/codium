class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  include ActiveRecordHelpers

  has_many :posts
  has_many :recommendations
  has_many :comments
  has_many :memberships
  has_many :projects, :through => :memberships

end
