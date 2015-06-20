class Recipe < ActiveRecord::Base
  validates_presence_of       :user
  validates_presence_of       :title, allow_blank: false
  validates_presence_of       :text,  allow_blank: false

  belongs_to :user
end
