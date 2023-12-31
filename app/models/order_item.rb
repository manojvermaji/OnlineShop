class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    before_save :set_unit_price
    before_save :set_total
    def unit_price
        if persisted?
            self[:unit_price]
        else
            product.price
        end
    end

    def total
        if unit_price.present? && quantity.present?
          unit_price.to_i*quantity.to_i
        else
          0
        end
      end
      


    private

    def set_unit_price
        self[:unit_price] = unit_price 
    end

    def set_total
        self[:total] = total * quantity
    end
end
