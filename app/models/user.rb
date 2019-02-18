class User < ApplicationRecord
  validates :name, presence: true, length: {maximum:15}
  validates :email, presence: true, format: {with: /[\w.\-]+@[\w\-]+\.[\w.\-]+/ }

  has_secure_password
  validates :password,length: {in: 8..32},format:{with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}

  #画像テーブル
  has_many :topics

  # お気に入りテーブル
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

  # コメントテーブル
  has_many :comments

end
