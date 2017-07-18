class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable #, :omniauthable

  # Associations
  has_many :locations, dependent: :destroy
  has_many :devices, through: :locations, dependent: :destroy
  has_many :submitted_device_brands,
             class_name: 'DeviceBrand',
             foreign_key: 'submitter_id',
             inverse_of: :submitter
  has_many :submitted_device_models,
             class_name: 'DeviceModel',
             foreign_key: 'submitter_id',
             inverse_of: :submitter
  has_many :submitted_device_types,
             class_name: 'DeviceType',
             foreign_key: 'submitter_id',
             inverse_of: :submitter
  has_many :submitted_remotes,
             class_name: 'Remote',
             foreign_key: 'submitter_id',
             inverse_of: :submitter

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
  ### For emails to have relatively adequate formatting
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
              allow_nil: true,
              format: { with: VALID_EMAIL_REGEX },
              length: { minimum: 6 },
              presence: true

  # Custom Validations

  # Custom Methods
  def name
    "#{first_name} #{last_name}"
  end

  # Private Methods
  private

    # Validation methods
    
    # Other private methods

end
