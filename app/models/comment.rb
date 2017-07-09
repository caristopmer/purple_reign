class Comment < ActiveRecord::Base
  belongs_to :author, class_name: :user
  belongs_to :article

  validates :body, :author_id, :article_id, presence: true
end
