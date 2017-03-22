class PeopleController < ApplicationController

  def index
    @people = Person.all
    render json: @people
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new
    @person.create(person_params)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
  end

  private

  def person_params
    params.require(:person).permit(:name, :favoriteCity)
  end

end
