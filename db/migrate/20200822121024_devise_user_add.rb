class DeviseUserAdd < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :administrator, :boolean
    add_column :users, :name, :string
  end
end
