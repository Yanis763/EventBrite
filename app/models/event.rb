class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :user
    validates :start_date, presence: true
    validates :duration , presence: true
    validates :title, length: {minimum: 5, maximum: 140}, presence: true
    validates :description, length: {minimum: 20, maximum: 1000}, presence: true
    validates :price, inclusion => 1..1000, presence: true
    validates :location, presence: true
end
