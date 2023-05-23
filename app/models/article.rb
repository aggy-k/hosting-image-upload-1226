class Article < ApplicationRecord
  has_one_attached :photo
  # has_one_attached :cover_image
  has_many_attached :photos
end
