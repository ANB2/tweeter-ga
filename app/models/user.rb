class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :tweets
  
  include Gravtastic
  gravtastic default: :wavatar
  
  acts_as_follower
  acts_as_followable
end
