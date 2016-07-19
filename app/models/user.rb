class User < ActiveRecord::Base
    has_many :list
    
    validates :username, presence: true
    validates :password, presence: true
end
