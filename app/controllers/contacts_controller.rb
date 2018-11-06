class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.html.erb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @contacts = Contact.all
    render 'new.html.erb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      phone_number: params[:phone_number], 
      email: params[:email], 
      middle_name: params[:middle_name], 
      bio: params[:bio],
      user_id: 1
      )
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end
  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Recipe.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.email = params[:email] || @contact.email
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.bio = params[:bio] || @contact.bio
    @contact.save
    redirect_to "/contacts"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
