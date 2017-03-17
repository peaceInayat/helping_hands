class Zone < User
  belongs_to :admin
  has_many :orphanages
  has_many :students


end
