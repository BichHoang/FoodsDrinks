module Admin
  class SuggestionsController < ApplicationController
    before_action :logged_in_user, :login_as_admin
    before_action :load_suggestion, only: %i(update destroy show)

    def index
      @suggestions = Suggestion.newest.paginate(page: params[:page],
      per_page: Settings.per_page_value)
    end

    def show; end

    def update
      @suggestion.rejected!
      flash[:success] = t "suggestions.reject_success"
      redirect_to admin_suggestion_path(@suggestion)
    end

    def destroy
      if @suggestion.rejected? || @suggestion.accepted?
        @suggestion.destroy
        flash[:success] = t "suggestions.destroy_success"
      else
        flash[:info] = t "suggestions.destroy_fails"
      end
      redirect_to admin_suggestions_path
    end
  end
end
