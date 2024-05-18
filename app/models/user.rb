class User < ApplicationRecord
  validates :username, presence: true,
             uniqueness: {case_sensitive : false},
            length :{minimum: 3, maximum: 25}

  VALLID_EMAIL_REGEX = ^[A-Za-z0-9. _%-]+@[A-Za-z0-9. -]+\\. [A-Za-z]{2,4}$
  validates :email, presence: true,
            uniqueness: {case_sensitive : false},
            length :{maximum: 105},
            format: {with: VALID_EMAIL_REGEX}
end
