class Login < ApplicationRecord
    validates :login_id,:password ,presence: true
end
