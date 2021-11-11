class AuthorsController < ApplicationController
  def new
  end

  def create
    author_params = params.require(:author).permit(:first_name, :last_name, :homepage)
    puts author_params
    @author = Author.new(author_params)
    #@author.save
    #redirect_to @author
  end

  def show
    @author = Author.find(params[:id])
  end

end
