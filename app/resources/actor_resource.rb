class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dob, :date
  attribute :image, :string

  # Direct associations

  has_many :characters

  # Indirect associations

  many_to_many :filmography,
               resource: MovieResource
end
