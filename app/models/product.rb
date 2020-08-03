class Product < ApplicationRecord
belongs_to :user

has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/

validates_presence_of :product_name, presence:{:message => " Product Name can't be blank"}

validates_presence_of :product_price, presence:{:message => "Product Price can't be blank"}

validates_presence_of :product_image, presence:{:message => "Product Image can't be blank"}

end
