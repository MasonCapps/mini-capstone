class SuppliersController < ApplicationController
  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end

  def index
    suppliers = Supplier.all
    render json: suppliers.as_json
  end

  def create
  end

  def update
  end

  def delete
  end
end
