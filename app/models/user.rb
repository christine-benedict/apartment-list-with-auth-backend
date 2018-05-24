class User < ApplicationRecord
  rolify
    has_secure_password
    has_many :grades

    after_create :assign_role

    def assign_role
        add_role(:student)
    end
end
