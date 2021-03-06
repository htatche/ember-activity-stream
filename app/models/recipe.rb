class Recipe < ActiveRecord::Base
  validates_presence_of       :user
  validates_presence_of       :name, allow_blank: false
  validates_presence_of       :text,  allow_blank: false

  validates                   :deleted, inclusion: { in: [true, false] }

  belongs_to :user
  has_many :activities  
end