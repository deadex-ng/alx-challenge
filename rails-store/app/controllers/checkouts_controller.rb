class CheckoutsController < ApplicationController
    before_action :authenticate_user!

    def show()
        amount = params[:my_param]
        current_user.set_payment_processor :stripe
        current_user.payment_processor.customer
        
        
        @checkout_session = current_user.payment_processor.checkout(mode: 'payment', line_items: 'price_1MZjAxFhqC3MH6nwpmX65V7f', success_url: checkout_success_url)
    end 

    def success
    
    end 
end
 