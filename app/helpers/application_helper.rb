# encoding: utf-8
module ApplicationHelper
	def product_path(product)
		send("#{product.class.to_s.downcase}_path", product.id)
	end

	def product_link(product)
		link_to product.name, product_path(product)
	end

	def format_price(price)
		number_to_currency price, :unit => "грн.", :format => "%n %u"
	end
end
