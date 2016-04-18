class User < ActiveRecord::Base
	has_secure_password

	has_many :user_skills
	has_many :skills, through: :user_skills

	def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
