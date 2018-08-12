class MemberTypeMember < ApplicationRecord
  belongs_to :member
  belongs_to :member_type
end
