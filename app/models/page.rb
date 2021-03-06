class Page < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: "500x500>", thumb: "400x350#" }, default_url: "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
