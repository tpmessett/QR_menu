class Menu < ApplicationRecord
  belongs_to :user
  # validates :file_upload, presence: true
  validates :name, presence: true
  extend FriendlyId
  friendly_id :name, use: :slugged
end
