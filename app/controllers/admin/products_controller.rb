module Admin
  class ProductsController < ApplicationController
    before_action :load_product, except: %i(new create)
    before_action :logged_in_user, :login_as_admin, except: %i(index show)
    before_action :load_suggestion, only: %i(new create)

    def new
      @product = Product.new
      @categories = Category.all
      import_product if @suggestion && @suggestion.pending?
    end

    def create
      @product = Product.new product_params
      if @product.save
        flash[:success] = "New product has been created!"
        redirect_to @product
      else
        render :new
      end
    end

    def edit; end

    def update
      if @product.update_attributes product_params
        flash[:success] = t ".update.success"
        redirect_to @product
      else
        render :edit
      end
    end

    def destroy
      status = @product.deleted! ? :success : :warning
      flash[status] = t ".destroy.#{status}"
      redirect_to root_path
    end

    private

    def load_suggestion
      id = params[:product] ? params[:product][:suggestion_id] : params[:suggestion_id]
      @suggestion = Suggestion.find_by id: id
    end

    def import_product
      @product.name = @suggestion.product_name
      @product.description = @suggestion.description
      @product.price = @suggestion.price
      @product.product_type = @suggestion.product_type
      @product.inventory = Settings.default_inventory
      @product.category_id = Settings.default_category
      @suggestion.accepted!
    end
  end
end
