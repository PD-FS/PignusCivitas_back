class BlackList < ApplicationRecord
  belongs_to :black_list_status
  belongs_to :person
end
