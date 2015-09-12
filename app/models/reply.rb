class Reply < ActiveRecord::Base
    
    #리플은 하나의 게시글에 속해있다
    belongs_to :post
end
