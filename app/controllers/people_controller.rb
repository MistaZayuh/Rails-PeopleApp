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
    #if this doesn't work, then you need the same private method as the "new" method
    @person = Person.find(params[:id])

    if @person.update
      redirect_to person_path
    else
      render :edit
    end
  end

  def delete
    Person.find(params[:id]).destroy
    redirect_to people_path
  end






end
