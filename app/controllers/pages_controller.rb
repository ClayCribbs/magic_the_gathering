class PagesController < ApplicationController
  def index
    @deck  = Deck.first
    @cards = Card.all - @deck.cards
  end

  def add_card
    @card = Card.find(params[:card_id])
    Deck.first.cards << @card
    redirect_to pages_index_path
  end

  def remove_card
    @card = Card.find(params[:card_id])
    CardsDeck.find_by(card_id: @card.id, deck_id: Deck.first.id).delete
    redirect_to pages_index_path
  end
end
