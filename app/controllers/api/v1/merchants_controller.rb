class Api::V1::MerchantsController < ApplicationController
before_action :set_merchant, only: [:show, :edit, :update, :destroy]

# GET /merchants
# GET /merchants.json
def index
  @merchants = Merchant.all.order(brand: :asc)
  render json: @merchants
end

# GET /merchants/1
# GET /merchants/1.json
def show
  if @merchant
    render json: @merchant
  else
    render json: @merchant.errors
  end
end

# GET /merchants/new
  def new
    @merchant = Merchant.new
  end

# GET /merchants/1/edit
def edit
end

# POST /merchants
# POST /merchants.json
def create
  @merchant = Merchant.new(merchant_params)

  if @merchant.save
    render json: @merchant
  else
    render json: @merchant.errors
  end
end

# PATCH/PUT /merchants/1
# PATCH/PUT /merchants/1.json
def update
end

# DELETE /merchants/1
# DELETE /merchants/1.json
def destroy
  @merchant.destroy

  render json: { notice: 'Merchant was successfully removed.' }
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_merchant
    @merchant = Merchant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def merchant_params
    params.permit(:name, :owner, :branch_count, :phone, :location, :whatsapp, :instagram)
  end
end
