class Profile < ApplicationRecord
belongs_to :user

has_attached_file :company_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :company_image, content_type: /\Aimage\/.*\z/

validates_presence_of :company_name, presence:{:message => "company_name can't be blank"}

validates_presence_of :about_company, presence:{:message => "can't be blank"}

validates_presence_of :minimun_order, presence:{:message => "can't be blank"}

validates_presence_of :target_country, presence:{:message => "can't be blank"}

end
