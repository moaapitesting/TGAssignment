module ShopModule
  def optus_logo
    @browser.div('aria-label': 'Optus Logo')
  end

  def shop_button(button_name)
    @browser.button('aria-label': button_name).wait_until(&:present?)
  end

  def mobile_button(text_name)
    @browser.a(text: text_name).wait_until(&:present?)
    end

  def mobile_phones_text(text_present)
    @browser.span(text: text_present).wait_until(&:present?)
  end

  def mobile_filter(text_present)
    @browser.label(for: text_present).wait_until(&:present?)
  end

  def new_customer(text_present)
    @browser.div('aria-label': text_present).wait_until(&:present?)
  end

  def proceed_newcustomer(text_present)
    @browser.span(text: text_present).wait_until(&:present?)
  end

  def data_sim_filter(arialabel,text_present)
    @browser.button('aria-label': arialabel,text:text_present).wait_until(&:present?)
  end

  def button_name(text_button)
    @browser.button(text:text_button).wait_until(&:present?)
  end

  def select_tablet_plan
    @browser.div(class:'sc-eWVKcp eqClLV cta').wait_until(&:present?)
  end

  def select_tablet(text_button)
    @browser.button('aria-label':text_button).wait_until(&:present?)
  end

  # def plandata
  #   @browser.div(title:'title-block').h5(text:'Small Data SIM Plan').wait_until(&:present?)
  # end
end