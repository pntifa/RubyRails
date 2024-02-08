class User < ApplicationRecord
    # Validations
    validates :username, presence: true, uniqueness: true
    validates :fullname, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 8, maximum: 20 }
    validates :interests, presence: true
    validates :courses, presence: true
  
    # Custom validation method example
    validate :custom_validation_method
  

    def custom_validation_method
        if fullname =~ /[^a-zA-Z\s\-]/
            errors.add(:fullname, "can only contain letters, spaces, and hyphens")
        end
    end
  
  end
  