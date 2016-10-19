class Answer < ActiveRecord::Base
  belongs_to :questions

  validates :answer, presence: true
end
