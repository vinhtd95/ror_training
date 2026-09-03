# Preview all emails at http://localhost:3000/rails/mailers/product_mailer
class ProductMailerPreview < ActionMailer::Preview
  def in_stock
    product = Product.find(12)
    subscriber = product.subscribers.first || Subscriber.new(email: "preview@example.com", product: product)

    ProductMailer.with(product: product, subscriber: subscriber).in_stock
  end
end