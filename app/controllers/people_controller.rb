class PeopleController < ApplicationController

  def index
    @people = Person.all
    render json: @people
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)
    render json: @person
  end

  def show
    @person = Person.find(params[:id])
    render json: @person
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    render json: @person
  end

  def destroy
    @person = Person.find(params[:id])
    @person.delete
    @people = Person.all
    render json: @people
  end

  private

  def person_params
    params.require(:data).permit(:name, :favoriteCity)
  end

end
