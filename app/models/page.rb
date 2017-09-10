class Page < ApplicationRecord
  belongs_to :campaign
  has_attached_file :button_photo

  validates :title, presence: true
  validates_attachment_content_type :button_photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
