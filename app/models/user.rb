class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
  
  def commented_posts
    Comment.where(user_id: self.id).collect do |comment|
      Post.find(comment.post_id)
    end
  end
    
end
