class Cleaner < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :quality_score, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

  def full_name
    "#{last_name}, #{first_name}"
  end
end
