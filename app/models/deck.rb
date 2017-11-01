class Deck < ApplicationRecord
  has_many :cards_decks
  has_many :cards, through: :cards_decks, source: :card
end
