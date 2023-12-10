class Feedback < ApplicationRecord
  has_many :responses, inverse_of: :feedback
  validates :email, uniqueness: true
  accepts_nested_attributes_for :responses

end
