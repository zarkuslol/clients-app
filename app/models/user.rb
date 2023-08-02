class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :telephone, presence: true
  validates :birth_date, presence: true
end
