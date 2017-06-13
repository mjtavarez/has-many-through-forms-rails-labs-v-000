class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  accepts_nested_attributes_for :user, reject_if: :all_blank
  
  def user_attributes=(user_attributes)
    user_attributes.each do |i, user_attribute|
      if user_attribute && user_attribute != ""
        user = User.find_or_create_by(username: user_attribute)
        user.comments << self
      end
    end
  end
  
  def user_name
    self.user.username
  end
  
end
