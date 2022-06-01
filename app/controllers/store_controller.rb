class StoreController < ApplicationController
  include CurrentCart
  before_action :count_index, only: %i[ index ]
  def index
    session[:count_index] += 1
    @products = Product.order(:title)
  end
end
