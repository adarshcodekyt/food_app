class User < ApplicationRecord
  :confirmable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.valid_login?(email, password)
    user = where(email: email).first
    [user&.valid_password?(password), user]
  end

   
   validates_presence_of :first_name, presence:{:message => "First Name can't be blank"}
   validates_presence_of :last_name, presence:{:message => "First Name can't be blank"}
   validates_presence_of :phone, presence:{:message => "Phone number can't be blank"}	
end



