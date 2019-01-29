class User < ApplicationRecord
  validates :name, presence: true, length: {maximum:15}
  validates :email, presence: true, format: {with: /[\w.\-]+@[\w\-]+\.[\w.\-]+/ }

  has_secure_password
  validates :password,length: {in: 8..32},format:{with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}


end
