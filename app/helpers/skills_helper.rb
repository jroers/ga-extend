module SkillsHelper
	def drop_down
		selections = []
		Skill.all.each do |skill|
			selections << [skill.name, skill]
		end
		return selections
	end
end
