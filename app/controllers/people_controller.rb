class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    # if this doesn't work add the private method person_params from the pages homework
    @person = Person.new
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def update
  end

  def delete
  end






end
