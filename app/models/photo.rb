class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :user

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :followers,
             :through => :user,
             :source => :following

  # Validations

end
