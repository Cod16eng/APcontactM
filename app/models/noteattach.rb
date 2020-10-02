class Noteattach < ApplicationRecord
  belongs_to :note
  validates :name, :attach, presence: true
  mount_uploader :attach, AttachUploader

end
