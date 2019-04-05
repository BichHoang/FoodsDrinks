class SuggestionsController < ApplicationController
  before_action :logged_in_user, except: :edit
  before_action :load_suggestion, only: %i(show update destroy)

  def new
    @suggestion = current_user.suggestions.build
  end

  def create
    @suggestion = current_user.suggestions.build suggestion_params
    if @suggestion.save
      flash[:success] = t "suggestions.create_success"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def suggestion_params
    params.require(:suggestion).permit :product_name, :description, :price,
      :product_type
  end

  def load_suggestion
    @suggestion = Suggestion.find_by id: params[:id]
    return if @suggestion
    flash[:danger] = t "suggestions.not_found_suggestion"
    redirect_to root_path
  end
end
