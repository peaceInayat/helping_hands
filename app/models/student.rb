class Student < ActiveRecord::Base
  belongs_to :orphanage
  belongs_to :zone
  belongs_to :admin


end
