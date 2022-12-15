class AccountsController < ApplicationController
  def index
  
    @ads=Account.all
  end
  def show
    @ad =Account.find(params[:id])
   
  end
  def new
    @ad=Account.new
  end
  def create
    @ad = Account.new(account_params)
      if @ad.save
         redirect_to @ad
       else
         render :new, status: :unprocessable_entity
      end
  def destroy
     @ad=Account.find(params[:id])
     @ad.destroy
      
     redirect_to root_path, status: :see_other
  end
  end
  private
  def account_params
    params.require(:account).permit(:account_no, :account_holder_name)
  end
end