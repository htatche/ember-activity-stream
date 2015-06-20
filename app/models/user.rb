class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable or :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :blogs,           dependent: :delete_all
  has_many :recipes,         dependent: :delete_all
  has_many :reviews,         dependent: :delete_all           
end
