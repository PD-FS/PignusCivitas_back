class Community < ApplicationRecord
  belongs_to :community, optional:true
  belongs_to :community_type, optional:false
end
