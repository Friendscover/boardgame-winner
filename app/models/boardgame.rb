class Boardgame < ApplicationRecord
    has_many :games

    validates :title, length: { minimum: 3 }
    validates :title, uniqueness: true
    validates :ranked, presence: true
end
