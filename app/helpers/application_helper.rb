module ApplicationHelper
  def full_title page_title
    base_title = t "base_title"
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def choose_product_type
    options_for_select([Settings.food, Settings.drink], Settings.food)
  end

  def choose_category_id
    options_for_select(@categories.collect{|u| [u.name, u.id]},
      selected: Settings.one_value)
  end

  def select_product_type
    options_for_select(@products.product_types)
  end

  def select_category
    options_for_select(@categories.collect{|u| [u.name, u.id]})
  end

  def select_type_filter
    options_for_select([[t(".name"), :name],[t(".created"), :created_at],[t(".price"), :price]])
  end
end
