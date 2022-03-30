class Game < ApplicationRecord
    has_many :uploads
    has_many_attached :game_files    
end
