class Public::CustomersController < ApplicationController
  def show
    @customer=current_customer
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    @customer.update(customer_params)
    redirect_to customers_mypage_path(@customer)
  end

  def confirm
    @customer=current_customer
  end

  def quit
    @customer=current_customer
    @customer.update_columns(is_deleted: true)
    reset_session
    redirect_to new_customer_registration_path
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :given_name, :family_name_kana, :given_name_kana, :address, :post_code, :phone_number, :is_deleted)
  end

  def is_matching_login_customer
    customer=Customer.find(params[:id])
    unless customer.id==current_customer.id
      redirect_to customer_path
    end
  end

end
