class OrdersMailer < ApplicationMailer
  default(
      from: "Orders Online",
      reply_to: "My Ecommerce vincethewalker.com"
  ) 
  
  #Customer Recieves mail after creating order
  def neworder(order)
    headers['X-SMTPAPI'] = '{"category": "Order incomplete"}'
    mail to: order.email,
          subject: "Incomplete Order for #{order.product.name}"
  end
end
