defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?([], _), do: false
  def contains?([ head | _ ], card) when card == head, do: true
  def contains?([ _ | deck ], card), do: contains?(deck, card)

  # def contains?(deck, card) do
  #   Enum.member?(deck, card)
  # end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
