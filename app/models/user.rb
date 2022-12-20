class User < ApplicationRecord
    has_many :events, through: :tickets 
    has_many :comments
    has_many :tickets

    validates :user_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true, length:{minimum: 8}
    validates :contacts, presence: true
end
