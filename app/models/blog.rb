class Blog < ActiveRecord::Base
  validates_presence_of       :name
  validates_presence_of       :url
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }{}
  validates                   :deleted, inclusion: { in: [true, false] }

  belongs_to :user
  has_many :activities
end
