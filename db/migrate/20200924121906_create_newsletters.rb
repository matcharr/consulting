class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :object
      t.text :body
      t.timestamps
    end
    add_column :users, :newsletter, :boolean
  end
end
