class Page < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "600x500>" }, default_url: "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
