class Customer < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  def full_name
    "#{last_name}, #{first_name}"
  end
end
