class Page < ApplicationRecord
  belongs_to :campaign

  validates :title, presence: true
end
