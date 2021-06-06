class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true
         enum status: { active: 0, inactive: 1 }
  enum type_of_access: { admin: 0, manager: 1, client: 2 }


  def self.current
    Thread.current[:current_user]
  end

  def full_name
    [ self.first_name, self.last_name ].join(' ')  
  end

end