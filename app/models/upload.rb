class Upload < ApplicationRecord
  belongs_to :game
  has_one_attached :game_files  
  belongs_to :user
end
