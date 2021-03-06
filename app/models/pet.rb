class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name, :description, :approximate_age, :sex

  validates :approximate_age, numericality: {
              greater_than_or_equal_to: 0
            }

  enum sex: [:female, :male]

  has_many :application_pets
  has_many :applications, through: :application_pets

  def self.sort(search)
    search_params = "%#{search.downcase}%"

    where("LOWER(name) LIKE(?)", search_params)
  end
end
