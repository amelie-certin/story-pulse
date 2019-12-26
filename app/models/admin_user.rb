class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable,
  # :registerable, :recoverable,
  devise :database_authenticatable, :rememberable, :validatable

  has_many :stories, dependent: :destroy

  enum rank: %i[user admin]
end
