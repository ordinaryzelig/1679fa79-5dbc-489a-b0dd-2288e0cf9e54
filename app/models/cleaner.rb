class Cleaner < ActiveRecord::Base
  has_and_belongs_to_many :cities

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :quality_score, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

  def full_name
    "#{last_name}, #{first_name}"
  end
end
