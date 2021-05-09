class Energy < ApplicationRecord
    has_many :companies, dependent: :destroy
end
