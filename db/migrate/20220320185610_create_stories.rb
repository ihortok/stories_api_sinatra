class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.boolean :public, default: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
