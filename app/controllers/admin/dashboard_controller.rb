class Admin::DashboardController < AdminController
  def index
    @products = current_admin.products
  end
  def create
    @product = product.new(product_params)
    @product.admin = current_user
  end
end
