class User < ActiveRecord::Base
	has_secure_password
	has_many :cards
	has_many :user_skills
	has_many :skills, through: :user_skills

	has_attached_file :image, styles: { medium: "300x300", thumb: "125x125" }, default_url: "/assets/default.png"

	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


	def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
