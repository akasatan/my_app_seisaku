class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment_title
      t.text :comment_body
      t.string :comment_image_id
      t.integer :tweet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
