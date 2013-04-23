class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  :battle_tag_name, :battle_tag_code
  # attr_accessible :title, :body


  has_many :shouts

  def full_battle_tag
  		battle_tag_name + "#" +battle_tag_code
  end
end
