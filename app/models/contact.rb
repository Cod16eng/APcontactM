class Contact < ApplicationRecord
	belongs_to :group
  belongs_to :user
  has_many :notes, dependent: :destroy
	mount_uploader :curriculum, CurriculumUploader
	# validation
	validates :name, :surname, :email, :mobile, presence: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

def self.search(search)
	contacts = all
  if search
    where('name ILIKE ? OR surname ILIKE ? OR company ILIKE ?',"%#{search}%", "%#{search}%", "%#{search}%")
  else
    all
  end
end

end
