class Order < ApplicationRecord
  enum status: {pending: 0, accepted: 1, rejected: 2}
  belongs_to :user
  has_many :order_products
  has_many :products, through: :order_products
  accepts_nested_attributes_for :order_products

  delegate :name, :email, :address, to: :user, allow_nil: true

  scope :search_by_status, ->(status){where(status: status) if status.first.present?}
  scope :newest, ->{order(created_at: :desc)}
  # scope :find_by_status_add, ->{where status: :added}

  # def add_product product_id
  #   order_product = order_products.find_by product_id: product_id
  #   order_product ? increase_quantity(order_product) : (order_product = order_products.build product_id: product_id)
  #   order_product
  # end

  # def increase_quantity order_product
  #   order_product.quantity += Settings.increase_quantity
  # end

  def send_success_email
    OrderMailer.order_success(self).deliver_now
  end

  def send_status_email
    OrderMailer.order_status(self).deliver_now
  end

  def total_price
    order_products.to_a.sum(&:total)
  end
end
