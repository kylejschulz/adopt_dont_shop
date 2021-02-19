class Shelter < ApplicationRecord
  has_many :pets

  def self.sort_alpha
    order(name: :desc)
  end

  def self.pending
  end
end
