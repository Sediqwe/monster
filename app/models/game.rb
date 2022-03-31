class Game < ApplicationRecord
    has_many :uploads , dependent: :delete_all
    has_many_attached :game_files , dependent: :delete_all
    has_one_attached :image , dependent: :delete_all
    extend FriendlyId
    friendly_id :name, use: :slugged
end
