class Card < ActiveRecord::Base
  belongs_to :user
  has_many :card_skills
  has_many :skills, through: :card_skills
end
