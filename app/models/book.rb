class Book < ApplicationRecord
  belongs_to :author
  scope(:title, -> (title) { where("LOWER(title) like ?", "%#{title.downcase}%")})
  scope(:price, -> (price) { where price: price })
end
