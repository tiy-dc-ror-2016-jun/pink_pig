class ConversationsController < ApplicationController
  def new
    @convo = Conversation.new
    @companies = Company.all
  end

  def show
    @convo = Conversation.find(params["id"])
  end

  def index
    @page = params[:page].to_i
    per_page = 15
    @convos = Conversation.page(@page).per(per_page)
  end

  def create
    @convo = Conversation.new(conversation_params)
    @convo.user = current_user

    # @convo.update(current_user.id)
    if @convo.save!
      redirect_to conversations_path
    else
      render :new
    end
  end

  def update
    @convo = Conversation.find(params["id"])

    if @convo.update(conversation_params)
      redirect_to conversations_path
    else
      render :edit
    end
  end

  def edit
    @convo = Conversation.find(params["id"])
    @person_name = Person.find(@convo.person_id).name
  end

  def destroy
    @convo = Conversation.find(params["id"])
    @convo.destroy
    redirect_to conversations_path
  end

  private def conversation_params
    params.require("conversation").permit(:user_id, :person_id, :company_id, :notes, :medium, :follow_up_on)
  end
end
