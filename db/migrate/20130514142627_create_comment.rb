class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.integer :comment_id

      t.timestamps
    end
  end
end
