class Food < ApplicationRecord
  def will_capitalize
    name.capitalize
  end

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
