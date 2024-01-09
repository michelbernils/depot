# frozen_string_literal: true

# Cart Model
class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
end
