class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def create
    @contact4 = Contact.new(first_name: params[:input_first_name], last_name: params[:input_last_name], phone_number: params[:input_phone_number], email: params[:input_email])
    @contact4.save
    render "show.json.jbuilder"
  end

  def update
    contact_id = params[:id]
    @contact1 = Contact.find_by(id: contact_id)
    @contact1.first_name = params[:input_first_name]
    @contact1.last_name = params[:input_last_name]
    @contact1.phone_number = params[:input_phone_number]
    @contact1.email = params[:input_email]
    @contact1.save
    render "show.json.jbuilder"
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render "destroy.json.jbuilder"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end
end
