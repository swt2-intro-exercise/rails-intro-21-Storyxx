class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    author_params = params.require(:author).permit(:first_name, :last_name, :homepage)
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
   
    author_params = params.require(:author).permit(:first_name, :last_name, :homepage)
    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
 
    redirect_to author_index_path
  end

end
