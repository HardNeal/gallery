class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :image,
                    styles: { medium: '700x700>', thumb: '300x300>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']
end

