class Topic < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  
  validates :user_id,     presence: true
  validates :title,       presence: true, length: {maximum: 50}
  validates :author,      presence: true, length: {maximum: 50}
  validates :kind,        presence: true, length: {maximum: 30}
  validates :description, presence: true, length: {maximum: 500}
  
  belongs_to :user
end
