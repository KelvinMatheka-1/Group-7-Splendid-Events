class Event < ApplicationRecord
    has_many :users, through: :tickets
    has_many :comments
    has_many :tickets

    validates :event_name, presence: true
    validates :event_image, presence: true
    validates :descripton, presence: true, length:{minimum: 20}
    validates :time, presence: true
    validates :location, presence: true
    validates :date, presence: true
    validates :price, presence: true
    
end
