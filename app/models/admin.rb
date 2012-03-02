class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable    :registerable,
  devise :database_authenticatable, :trackable, :validatable ,:registerable

  # Setup accessible (or protected) attributes for your model    :password_confirmation, :remember_me
  attr_accessible :email, :password
end
