class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy

    render 'index'
  end

  def create
    @people = Person.new(people_params)

    if @people.save
      redirect_to @people
    else
      render 'new'
    end
  end

  def update
    @people = Person.find(params[:id])

    if @people.update(people_params)
      redirect_to @people
    else
      render 'edit'
    end
  end

  private
  def people_params
      params.require(:people).permit(:title, :text)
  end
end
