class FavoriteCity < ApplicationRecord

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  belongs_to :user
end
