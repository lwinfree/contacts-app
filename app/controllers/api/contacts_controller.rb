class Api::ContactsController < ApplicationController

  # before_action :authenticate_user

  # def contact_method
  #   @contact = Contact.first
  #   render 'contact.json.jbuilder'
  # end

  # def all_contacts_method
  #   @contacts = Contact.all
  #   render 'contacts.json.jbuilder' 
  # end

  def index
    @contacts = Contact.all

    # search_name = params[:search_name]
    # if search_name
    #   @contacts = @contacts.where("first_name ILIKE ? OR last_name ILIKE ? OR email ILIKE ? OR phone_number ILIKE ? OR middle_name ILIKE ? OR bio ILIKE ?", "%#{search_name}%", "%#{search_name}%", "%#{search_name}%", "%#{search_name}%", "%#{search_name}%", "%#{search_name}%")
    # end
    if params[:group]
      group = Group.find_by(name: params[:group])
      @contacts = group.contacts
    end
    render 'contacts.json.jbuilder'

    # if current_user
    #   @contacts = current_user.contacts
    #   render "contacts.json.jbuilder"
    # else
    #   render json: []
    # end
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      middle_name: params["middle_name"],
      bio: params["bio"],
      user_id: current_user.id,
      )
    if @contact.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    @contact.middle_name = params["middle_name"] || @contact.middle_name
    @contact.bio = params["bio"] || @contact.bio
    if @contact.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: {message: "Contact has been destroyed."}
  end

end
