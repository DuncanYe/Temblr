class Post < ApplicationRecord

  has_many :comments, dependent: :destroy
  validates_presence_of :title, :body

  mount_uploader :image, ImageUploader
end
