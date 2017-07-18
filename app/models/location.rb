class Location < ApplicationRecord
  # Associations
  has_many :devices,
             dependent: :destroy
  belongs_to :user

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\w -'|]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { scope: :user_id,
                            message: "device already exists" }
  ## User validations
  validates :user,
              presence: true

  # Custom Validations

  # Custom Methods

  # Private Methods
  private

    # Validation methods
    
    # Other private methods

end
