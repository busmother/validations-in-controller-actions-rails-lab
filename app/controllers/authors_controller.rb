class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(name: params[:name], email: params[:email])
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      # @author
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update

  end
  private

  def author_params
    params.permit(:email, :name)
  end
end
