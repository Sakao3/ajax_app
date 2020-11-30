class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.boolean :checked
      # boolean型　trueかfalseで判断
      t.timestamps
    end
  end
end