class Post < ApplicationRecord
  belongs_to :user

  has_many :comments

  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  mount_uploader :image, PostImageUploader

  include PgSearch

  pg_search_scope :search, against: [:title], :using => {
                :tsearch => {:prefix => true}
              }
end
