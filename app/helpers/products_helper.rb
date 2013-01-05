module ProductsHelper

  def get_class_by_product_status(product_status)
    if product_status.code == ProductStatus::CODE_EXIST
      "label label-success"
    elsif product_status.code == ProductStatus::CODE_ORDER
      "label label-warning"
    else
      "label"
    end
  end
end
