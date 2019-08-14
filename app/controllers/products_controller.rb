class ProductsController < ApplicationController
    def index
    end
    
    def add
        cart = session[:cart] || []
        cart << params['product']
        session[:cart] = cart
        redirect_to :back
        cart
    end
end
 