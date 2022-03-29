class Upload < ApplicationRecord
  belongs_to :game
  
  has_many_attached :game_files
end
