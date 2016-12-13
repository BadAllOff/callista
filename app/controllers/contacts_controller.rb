class ContactsController < ApplicationController
  before_action :set_page

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = t('contacts.thank_you_for_your_message_we_will_contact_you_soon')
    else
      flash.now[:error] = t('contacts.cannot_send_message')
      render :new
    end
  end

  private

  def set_page
    @page = Page.find(2)
  end
end
