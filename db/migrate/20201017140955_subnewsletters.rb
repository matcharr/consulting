class Subnewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :subnewsletters do |t|
      t.string :title
      t.text :content
      t.belongs_to :newsletters, index: true
      t.timestamps 
    end
    add_column :newsletters, :number, :integer
  end
end
