class AssetStock < ApplicationRecord
  belongs_to :asset_stock_status
  belongs_to :asset
  belongs_to :community
end
