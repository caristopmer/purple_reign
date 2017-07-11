class User < ActiveRecord::Base
  has_many :comments, foreign_key: :author_id
  has_many :articles, foreign_key: :author_id
  has_many :commented_articles, -> { distinct }, through: :comments, source: :article

  validates :username, :password_hash, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true, format: { with: /.+@\D*\.\D{3}\z/ }

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
