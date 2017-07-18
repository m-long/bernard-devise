class DeviceType < ApplicationRecord
  # Associations
  has_many :device_models
  has_many :device_commands
  belongs_to :submitter,
               class_name: 'User',
               foreign_key: 'submitter_id'

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[a-zA-Z -]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { message: 'Device type already exists.' }
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
