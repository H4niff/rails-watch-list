class List < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, :dependent => :delete_all

end
