class Game < ApplicationRecord
    has_one_attached :game_file
    has_many_attached :game_images
end
