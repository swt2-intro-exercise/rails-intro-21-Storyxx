class Paper < ApplicationRecord
    has_and_belongs_to_many :authors

    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true

    scope :written_in, ->(creation_year) { where("year == ?", creation_year) if creation_year.present? }
end
