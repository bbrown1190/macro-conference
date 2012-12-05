class Registrant < ActiveRecord::Base
  attr_accessible :email, :name, :institution, :discussant, :chair, :presenter, :subject, :double, :casa, :red

  before_save { |registrant| registrant.email = email.downcase }
 # before_save :role_validation

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  #def role_validation
   # if self.discussant? && self.chair? && self.presenter?
   #   false
    #else
    #  true
  #  end
 # end
end

