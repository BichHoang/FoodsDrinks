module Admin
  class UsersController < ApplicationController
    before_action :load_user, only: :destroy

    def destroy
      status = @user.deleted! ? :success : :warning
      flash[status] = "User has ben deleted!"
      redirect_to root_path
    end
  end
end
