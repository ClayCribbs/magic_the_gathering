class CreateCardsDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :cards_decks do |t|
      t.integer :card_id, index: true, foreign_key: true
      t.integer :deck_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
