class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :director,
             counter_cache: :filmography_count

  has_many   :characters,
             dependent: :destroy

  # Indirect associations

  has_many   :cast,
             through: :characters,
             source: :actor

  # Validations

  validates :director_id, presence: true

  validates :title, presence: true

  # Scopes

  def to_s
    title
  end
end
