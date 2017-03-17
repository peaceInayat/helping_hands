class Admin < User
  has_many :zones
  has_many :orhanages
  has_many :students

end
