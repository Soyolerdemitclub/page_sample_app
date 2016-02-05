class Paper < ActiveRecord::Base
  ratyrate_rateable "speed"
  has_attached_file :image, styles: { medium: "500x500>", thumb: "350x250#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  extend FriendlyId
  friendly_id :name, use: :slugged
end
