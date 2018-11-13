# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: :Artwork

  has_many :shares,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ArtworkShare

  has_many :shared_art,
    through: :shares,
    source: :artwork

end
