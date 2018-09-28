class Person < ApplicationRecord
  belongs_to :city
  has_one_attached :image

  def name_with_initial
    "#{first_name} #{last_name}"
  end
end
