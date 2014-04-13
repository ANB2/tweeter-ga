class Tweet < ActiveRecord::Base
  validates :body, presence: { message: 'must be present' }
  validates :user_id, presence: true
  
  belongs_to :user
end
