class Product < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :description #Dòng này thông báo cho Rails biết sản phẩm có một trường tên là description dạng Rich Text.
  validates :name, presence: true
end
