class DashboardController < ApplicationController
    def index   
        render :index
    end
    
    def account
        render :account
    end

    def editpay
        @payment = Payment.all
        render :editpay
    end
    

    def offer   
        render :offer
    end
end
   