module Admin
  class CategoriesController < ApplicationController
    before_action :logged_in_user , :login_as_admin, :load_all_categories
    before_action :load_category, except: %i(new create index)

    def new
      @category = Category.new
    end

    def create
      @category = Category.new category_params
      if @category.save
        flash[:info] = t "categories.create_success"
        redirect_to root_path
      else
        render :new
      end
    end

    def show; end

    def index; end

    def edit; end

    def update
      if @category.update_attributes category_params
        flash[:info] = t "categories.update_success"
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
      if @category.products.blank?
        @category.destroy
        flash[:info] = t "categories.destroy_success"
      else
        flash[:danger] = t "categories.destroy_fails"
      end
      redirect_to admin_categories_path
    end

    private

    def category_params
      params.require(:category).permit :name, :parent_id
    end

    def load_category
      @category = Category.find_by id: params[:id]
      return if @category
      flash[:danger] = t "categories.not_found_category"
      redirect_to root_path
    end

    def load_all_categories
      @categories = Category.all
    end
  end
end
