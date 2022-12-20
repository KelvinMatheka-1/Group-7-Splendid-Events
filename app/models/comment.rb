class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :event

    validates :rating, inclusion:{in: [1,2,3,4,5]} 
    validates :coment, presence: true
end
