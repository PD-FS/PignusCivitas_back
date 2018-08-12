class CreateCommunityStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :community_staffs do |t|
      t.references :staff, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
