class Question < ApplicationRecord
    validates :name, presence: true
    validates :title, presence: true, 
                      length: { minimum: 5 }
    validates :email, :allow_blank => true, :format => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
end
