class CreateMemberTypeMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :member_type_members do |t|
      t.references :member, foreign_key: true
      t.references :member_type, foreign_key: true

      t.timestamps
    end
  end
end
