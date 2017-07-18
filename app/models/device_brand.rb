class DeviceBrand < ApplicationRecord
  # Associations
  has_many :models,
             class_name: "DeviceModel",
             foreign_key: "device_brand_id"
  has_many :devices, through: :models
  belongs_to :submitter,
               class_name: 'User',
               foreign_key: 'submitter_id'

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\w ]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { message: "Brand already exists." }
  ## Submitter validations
  validates :submitter,
              presence: true

  # Custom Validations

  # Custom Methods

  # Private Methods
  private

    # Validation methods
    
    # Other private methods

end
