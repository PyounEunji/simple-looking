class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      #리플과 관련된 모델
      t.integer :post_id #어느 게시글에 해당하는 리플인지
      t.string :user #리플 작성자에 해당하는 디비
      t.string :content # 리플 내용에 해당하는 디비 

      t.timestamps null: false
    end
  end
end
