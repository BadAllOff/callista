class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable:, registerable, :recoverable,
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable, :confirmable
end
