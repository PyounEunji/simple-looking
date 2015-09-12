class Post < ActiveRecord::Base
    mount_uploader :p_image, ImageReviewUploader
    
    #게시글은 여러개의 리플을 가질 수 있다
    has_many :replies
      
  
    has_many :taggings
    has_many :tags, through: :taggings
    
    def all_tags=(names)
      self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
      end
    end
    
    def all_tags
      self.tags.map(&:name).join(", ")
    end
    
    def self.tagged_with(name)
     Tag.find_by_name!(name).posts
    end

end
