class Upload < ApplicationRecord
  belongs_to :game
  has_one_attached :game_files  
  belongs_to :user
  belongs_to :translater
  belongs_to :program
  belongs_to :platform
  def self.default_timezone
    :utc
  end
  end
