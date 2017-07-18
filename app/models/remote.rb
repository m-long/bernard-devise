class Remote < ApplicationRecord
  # Associations
  has_many :keys
  has_and_belongs_to_many :device_models
  belongs_to :brand,
               class_name: 'DeviceBrand',
               foreign_key: 'brand_id'
  belongs_to :submitter,
               class_name: 'User',
               foreign_key: 'submitter_id'

  # Validations
  ## Name validations
  VALID_NAME_REGEX = /\A[\w -]+\z/
  validates :name,
              format: { with: VALID_NAME_REGEX },
              length: { in: 2..50 },
              presence: true
  ## Submitter validations
  validates :submitter,
              presence: true
  ## Brand validations
  validates :brand,
              presence: true
  ## Model validations
  VALID_MODEL_REGEX = /\A[\w -]+\z/
  validates :model,
              format: { with: VALID_MODEL_REGEX },
              length: { in: 2..50 },
              presence: true,
              uniqueness: { scope: :brand,
                            message: "Remote already exists." }
  ## Supported devices validations
  ### TODO Ideally should create HABTM for device_models relation rather than string
  VALID_DEVICE_REGEX = /\A[a-zA-Z ]+\z/
  validates :supported_devices,
              allow_nil: true,
              format: { with: VALID_DEVICE_REGEX },
              length: { in: 2..50 }
  ## Eps validations 
  validates :eps,
              allow_nil: true,
              inclusion: { in: 0..100 }
  ## Aeps validations 
  validates :aeps,
              allow_nil: true,
              inclusion: { in: 0..100 }
  ## Duty cycle validations
  validates :duty_cycle,
              allow_nil: true,
              inclusion: { in: 0..100 }

  # Custom Validations
  validate :flags_are_formatted_properly

  # Custom Methods

  # Private Methods
  private

    # Validation methods
    def flags_are_formatted_properly
      # Ensures flags string is properly formatted with no repeats
      allowed_flags = %w[RC5
                         RC6
                         RCMM
                         SHIFT_ENC
                         SPACE_ENC
                         REVERSE
                         NO_HEAD_REP
                         NO_FOOT_REP
                         CONST_LENGTH
                         RAW_CODES
                         REPEAT_HEADER
      ]
      unless self.flags.blank?
        # Validate flags are allowed
        flag_array = self.flags.split('|')
        ## Make sure no repeated flags
        flag_array.each do |flag|
          flag.squish!
        end
        flag_array.uniq! # remove any duplicate flags
        # Validate all flags are allowed, must be case-sensitive
        flag_array.each do |flag|
          unless flag.in? allowed_flags
            errors.add(:flags, "has improper flag: #{flag}")
          end
        end
        # Clean and rebuild flag string
        self.flags = flag_array.join(' | ')
      end
    end
    
    # Other private methods

end
