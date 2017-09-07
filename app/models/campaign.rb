class Campaign < ApplicationRecord
  belongs_to :admin
  has_many :pages, dependent: :destroy

  validates :name, :title, presence: true
end
