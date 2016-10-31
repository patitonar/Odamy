class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

	has_many :tasks

	has_many :subscriptions
	has_many :users, through: :subscriptions


	validates :name, presence: true, length: { maximum: 100 }
	validates :content, presence: true, length: { maximum: 2000 }
	validates :price, presence: true, numericality: { only_integer: true }
	validates :promo, presence: true

	has_attached_file :image, :s3_protocol => :https, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def shortname
  	name.length > 25? name[0..25] + "..." : name
  end

  def price_in_cents
  	(self.price*100).to_i
  end
end
