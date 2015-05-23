class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all

  end

  # GET /products/1
  # GET /products/1.json
  def show
   @product.product_reviews.build
   @relatedProducts = Product.all.where("product_category_id = #{@product.product_category_id} AND id != #{@product.id}")
   @product_review = ProductReview.new
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.product_category.build
  end

  # GET /products/1/edit
  def edit
  end

  # /products/:id/add_to_cart
  def add_to_cart
    @product = Product.find(params[:id])
   # current_user.cart.add_item(id: @product.id, name: @product.name, unit_cost: @product.cost, cost: @product.cost * params[:quantity], quantity: params[:quantity])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :product_category_id)
    end
end
