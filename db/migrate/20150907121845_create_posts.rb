class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :p_nickname
      t.string :p_password
      t.string :p_content
      t.string :p_image

      t.timestamps null: false
    end
  end
end
