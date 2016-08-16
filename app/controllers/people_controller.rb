class PeopleController < ApplicationController

  def index
    @page = params[:page].to_i
    per_page = 5
    @people = Person.page(@page).per(per_page)
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to person_path(@person.id)
    else
      render :new
    end
  end

  def update
    @person = Person.find(params[:id])
    if
      @person.update(person_params)
      redirect_to people_path
    else
      render 'edit'
    end
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy

    redirect_to people_path
  end



  private
  def person_params
    params.require(:person).permit(:full_name, :company_id, :comments)
  end

end
