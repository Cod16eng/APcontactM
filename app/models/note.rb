class Note < ApplicationRecord
  belongs_to :contact
  belongs_to :user

  default_scope { order('created_at DESC') }

  def self.search(search)
	notes = all
  if search
    where('name ILIKE ? OR surname ILIKE ? OR content ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
  else
    all
  end
end
  

end
