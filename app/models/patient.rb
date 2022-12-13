class Patient < ApplicationRecord
  has_many :physicians, through: :appointments
  has_many :appointments
end
