class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :short_description, presence: true
  validates :language, presence: true
  validates :level, presence: true
  validates :price, presence: true

  has_rich_text :description
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  def to_s
    title
  end

end
