class Orphanage < User
  belongs_to :zone
  belongs_to :admin
  has_many :students

  validates_presence_of :zone_id

end
