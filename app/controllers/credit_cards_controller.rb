class CreditCardsController < InheritedResources::Base

  def destroy
    @card = CreditCard.find(params[:card_id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to :back }
    end
  end
end
