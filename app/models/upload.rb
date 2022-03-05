class Upload < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_one_attached :txt   # Use has_one_attached for only one file allowed
  validates :txt,
            content_type: [:txt, :zip], presence: true
  validates :title, presence: true
  validates :version, presence: true

end
