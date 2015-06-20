class Blog < ActiveRecord::Base
  validates_presence_of       :user
  validates_presence_of       :title
  validates_presence_of       :url
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }{}

  belongs_to :user
end
