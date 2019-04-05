class OrderMailer < ApplicationMailer
  def order_success order
    @order = order
    mail to: @order.user.email, subject: t(".subject")
  end

  def order_status order
    @order = order
    mail to: @order.user.email, subject: t(".subject")
  end
end
