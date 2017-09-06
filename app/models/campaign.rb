class Campaign < ApplicationRecord
  belongs_to :admin
  has_many :pages

  validates :name, :title, presence: true
end
