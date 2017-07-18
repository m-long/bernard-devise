class Key < ApplicationRecord
  # Associations
  belongs_to :remote

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\w -]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { scope: :value,
                            message: "-value pair already exists." }
  ## Value validations
  VALID_HEXIDECIMAL_REGEX = /\A[\d]x[\h]+\z/ # length not validated in REGEX
  validates :value,
              format: { with: VALID_HEXIDECIMAL_REGEX },
              length: { in: 2..16 }, # must be hexidecimal number, max length of 16 chars
              presence: true
  ## Remote validations
  validates :remote,
              presence: true

  # Custom Validations
  before_validation :cleanup_whitespace

  # Custom Methods

  # Private Methods
  private

    # Validation methods
    
    def cleanup_whitespace
      # Clean up white space and double spaces before writing to db
      self.name.squish!
      self.value.squish!
    end
    
    # Other private methods

end
