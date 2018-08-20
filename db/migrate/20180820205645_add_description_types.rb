class AddDescriptionTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_types, :description, :text
    remove_column :agent_types, :type
    add_column :agent_types, :description, :text
    remove_column :weapon_types, :type
    add_column :weapon_types, :description, :text
  end
end
