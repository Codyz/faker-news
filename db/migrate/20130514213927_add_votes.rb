class AddVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :comment_id
      t.integer :post_id

      t.timestamps
    end
  end
end
