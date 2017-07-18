class DeviceModel < ApplicationRecord
  # Associations
  has_many :devices
  has_and_belongs_to_many :remotes
  belongs_to :brand,
               class_name: "DeviceBrand",
               foreign_key: "device_brand_id"
  belongs_to :device_type
  belongs_to :submitter,
               class_name: 'User',
               foreign_key: 'submitter_id'

  # Validations
  ## Ensure all the device model's remotes are valid as well
  validates_associated :remotes, 
                         message: "%{value} remote for this device isn't configured properly."
  ## Brand validations
  validates :brand,
              presence: true
  ## Device type validations
  validates :device_type,
              presence: true
  ## Name validations
  VALID_NAME_REGEX = /\A[\w -_.]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { scope: :brand,
                            message: "-#{:brand} already exists in database." }
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
