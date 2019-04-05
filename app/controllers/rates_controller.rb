class RatesController < ApplicationController
  before_action :logged_in_user, only: %i(create)

  def create
    @rate = Rate.new rate_params
    @rate.user_id = current_user.id
    load_product
    respond_to do |format|
      @rate.save
      @product.update_avg_rate @rate.point if @rate.point.present?
      format.html{}
      format.js{}
    end
  end

  private

  def rate_params
    params.require(:rate).permit :product_id, :point, :comment
  end

  def load_product
    @product = Product.find_by id: @rate.product_id
    return if @product
    flash[:danger] = t "rates.product_not_found"
    redirect_to root_path
  end
end
