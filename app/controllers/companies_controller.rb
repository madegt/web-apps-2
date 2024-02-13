class CompaniesController < ApplicationController

  def index

    @companies = Company.all

    # find all Company rows
    # render companies/index view
  end

  
#show request to go into the company profile
  # def show
  #   # find a Company
  #   # render companies/show view with details about Company
  # end

def show
#it renders under views>show > no show for each, is one for all with same strucutre for everyone
#static
#company=Company.find_by({"id"=>1})

#using params
@company=Company.find_by({"id"=>params["id"]}) 

end


def new
# def new
  #   # render view with new Company form
  # end

end


def create
#create new row
@company = Company.new
#by looking at the hash data from input, we can put names from form
@company["name"]=params["name"]
@company["city"]=params["city"]
@company["state"]=params["state"]
#save inputs in table
@company.save

#redirect user to other
redirect_to "/companies"

end




  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end

  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end

  # def destroy
  #   # find a Company
  #   # destroy Company row
  #   # redirect user
  # end

end
