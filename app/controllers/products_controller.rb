class ProductsController < ApplicationController
  respond_to :html

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
    @tags = @product.tags.join(",")
  end

  def create
    @product = Product.new(params[:product])
    @product.tags = params[:tags].split(",") unless params[:tags].blank?

    if @product.save
      flash[:notice] = 'Your product has been saved'
      redirect_to products_url
    else
      flash[:notice] = 'Please correct the errors below'
      render :action => :new
    end

  end

  def update
    @product = Product.find(params[:id])
    params[:product][:tags] = params[:tags].split(",") unless params[:tags].blank?

    if @product.update_attributes(params[:product])
      flash[:message] = 'Your product has been updated'
      redirect_to products_url
    else
      flash[:notice] = 'Please correct the errors below'
      render :action => :edit
    end
  end
end
