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
end
