class Activity < ActiveRecord::Base
  validates :action,
    presence: true,
    inclusion: { in: %w(create update destroy) }

  belongs_to :user
  belongs_to :blog
  belongs_to :recipe
  belongs_to :review  
end