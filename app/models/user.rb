class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # include Devise::JWT::RevocationStrategies::Whitelist

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_and_belongs_to_many :skills
end
