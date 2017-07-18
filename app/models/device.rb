class Device < ApplicationRecord
  # Associations
  has_one :user, through: :location, inverse_of: :devices
  has_one :brand, through: :device_model, source: :model
  has_many :remotes, through: :device_model
  belongs_to :location
  belongs_to :device_model

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\w -']+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { scope: :location_id,
                            message: "Device already exists at that location." }
  ## Location validations
  validates :location,
              presence: true
  ## Device model validations
  validates :device_model,
              presence: true

  # Custom Validations

  # Custom Methods

  # Private Methods
  private

    # Validation methods
    
    # Other private methods

end
