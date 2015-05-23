class ProductMetaInfosController < ApplicationController
  before_action :set_product_meta_info, only: [:show, :edit, :update, :destroy]

  # GET /product_meta_infos
  # GET /product_meta_infos.json
  def index
    @product_meta_infos = ProductMetaInfo.all
  end

  # GET /product_meta_infos/1
  # GET /product_meta_infos/1.json
  def show
  end

  # GET /product_meta_infos/new
  def new
    @product_meta_info = ProductMetaInfo.new
  end

  # GET /product_meta_infos/1/edit
  def edit
  end

  # POST /product_meta_infos
  # POST /product_meta_infos.json
  def create
    @product_meta_info = ProductMetaInfo.new(product_meta_info_params)

    respond_to do |format|
      if @product_meta_info.save
        format.html { redirect_to @product_meta_info, notice: 'Product meta info was successfully created.' }
        format.json { render :show, status: :created, location: @product_meta_info }
      else
        format.html { render :new }
        format.json { render json: @product_meta_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_meta_infos/1
  # PATCH/PUT /product_meta_infos/1.json
  def update
    respond_to do |format|
      if @product_meta_info.update(product_meta_info_params)
        format.html { redirect_to @product_meta_info, notice: 'Product meta info was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_meta_info }
      else
        format.html { render :edit }
        format.json { render json: @product_meta_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_meta_infos/1
  # DELETE /product_meta_infos/1.json
  def destroy
    @product_meta_info.destroy
    respond_to do |format|
      format.html { redirect_to product_meta_infos_url, notice: 'Product meta info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_meta_info
      @product_meta_info = ProductMetaInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_meta_info_params
      params.require(:product_meta_info).permit(:make, :model, :color, :additional_info, :product_id)
    end
end
