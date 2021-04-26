class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  ### Modules

  ### Associations
  belongs_to :conference, optional: true
  has_many :participations
  has_many :slots, through: :participations

  ### Callbacks

  ### Enums

  ### Delegations

  ### Validations

  ### Scopes

  ### Class Methods
  class << self
  end

  ### Instance Methods
  def email_required?
    false
  end
end
