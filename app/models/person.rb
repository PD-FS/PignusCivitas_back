class Person < ApplicationRecord
  belongs_to :city

  def name_with_initial
    "#{first_name} #{last_name}"
  end
end
