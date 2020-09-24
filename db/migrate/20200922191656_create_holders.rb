class CreateHolders < ActiveRecord::Migration[5.2]
  def change
    create_table :holders do |t|
      t.string :title
      t.string :section
      t.timestamps
    end
  end
end
