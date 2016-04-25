class Skill < ActiveRecord::Base
	has_many :user_skills
	has_many :users, through: :user_skills

	has_many :card_skills
	has_many :cards, through: :card_skills
end
