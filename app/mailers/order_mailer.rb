class OrderMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_email
    @user = params[:user]
    @order = params[:order]
    mail(to: @order.email, subject: 'Thank you for shopping at Jungle!')
  end
end
