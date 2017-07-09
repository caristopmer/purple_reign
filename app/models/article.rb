class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :comments

  validates :title, :content, :author_id, presence: true
end
