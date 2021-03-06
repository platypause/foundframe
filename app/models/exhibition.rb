class Exhibition < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", big: "900x600>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
	validates :artist, presence: true, length: { minimum: 3 }
	validates :name, presence: true, length: { minimum: 3}

	belongs_to :user
	belongs_to :gallery
end
