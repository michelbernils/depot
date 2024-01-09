# frozen_string_literal: true

# Current Cart module
module CurrentCart
  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:card_id] = @cart.id
  end
end
