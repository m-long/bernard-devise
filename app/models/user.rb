class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable #, :omniauthable

  # Associations

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\p{L}-]+\z/
  validates :first_name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true
  validates :last_name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true
  ## Email validations
  ### Ensure emails in db are lowercase
  before_save :format_email
  ### For emails to have relatively adequate formatting
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
              allow_nil: true,
              format: { with: VALID_EMAIL_REGEX },
              length: { minimum: 6 },
              presence: true

  # Custom Validations

  # Custom Methods
  def full_name
    "#{first_name} #{last_name}"
  end

  # Private Methods
  private

  ## Converts email to lowercase for before save
  ## Also done with Devise but ensures done in model
  def format_email
    email.downcase!.strip!
  end

end
