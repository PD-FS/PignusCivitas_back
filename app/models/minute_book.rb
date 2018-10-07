class MinuteBook < ApplicationRecord
  belongs_to :community
  has_one_attached :pdf_file
end
