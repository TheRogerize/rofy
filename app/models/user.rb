class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable
    after_create :set_default_role
    belongs_to :role, optional: true

    attr_writer :login
    # validate :validate_username, :last_name, :email, :password, presence: true
    validate :validate_username


    def login
      @login || email || username
    end

    def self.find_for_database_authentification(warden_conditions)
      conditions = warden_conditions.dup
        if login = condition.delete(:login)
          where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase}]).first
        elsif conditions.has_key?(:username)
          where(conditions.to_h).first
        end

    end

    def validate_username
      if User.where(email: email).exists?
        errors.add(:email, :invalid)
      end
    end

    private 

    def set_default_role
      self.update(role_id: Role.find_by(code: 'default').id)
    end  
end
