class SkillsController < ApplicationController
	def index
		@skills = Skill.all
	end

	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(skill_params)
		if @skill.save
			flash[:notice] = "Skill saved"
			
		else
			flash[:notice] = "Something went wrong"
		end
		redirect_to user_path(current_user)
	end

	def show
		@skill = Skill.find_by_id(params[:id])
	end

	def edit
		@skill = Skill.find_by_id(params[:id])
	end

	def update
		@skill = Skill.find_by_id(params[:id])
		@skill.update_attributes(skill_params)
		flash[:notice] = "Successfully updated skills"
		redirect_to user_path(current_user)
	end

	def destroy
		@skill = Skill.find_by_id(params[:id])
		@skill.destroy
		flash[:notice] = "Successfully deleted skill"
		redirect_to user_path(current_user)
	end

	private

	def skill_params
		params.require(:skill).permit(:skill)
	end
		
end
