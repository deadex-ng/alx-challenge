class CheckoutsController < ApplicationController
    before_action :authenticate_user!

    def show()
        amount = params[:my_param]

        @checkout_session = Stripe::Checkout::Session.create(
            line_items: [{
              price_data: {
                currency: 'usd',
                unit_amount: amount,
                product_data: {
                  name: 'Instruments',
                  description: 'Musical Instruments',
                },
              },
              quantity: 1,
            }],
            mode: 'payment',
            success_url: checkout_success_url
          )

    end 

    def success
    
    end 
end
 