class Upgrade < ActiveRecord::Base
  attr_accessible :account_plan, :credit_card
  belongs_to :user
  accepts_nested_attributes_for :user

  def create
    params[:credit_card][:user_id] = current_user
    @creditcard = CreditCard.new(params[:credit_card])
    redirect_to credit_cards_path
  end

  def destroy
    @creditcard = CreditCard.find(params[:id])
    @creditcard.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
