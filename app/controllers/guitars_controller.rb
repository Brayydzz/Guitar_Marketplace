class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all
  end

  def new
    @guitar = Guitar.new
  end
  
  def create 
    @guitar = Guitar.new(guitar_params)
    redirect_to(@guitar.save ? user_path(@guitar.user_id) : new_guitar_path(guitar_params))
  end

  def show
    @guitar = Guitar.find(params[:id])
  end

  def edit
    @guitar = Guitar.find(params[:id])
  end

  def update 
    @guitar = Guitar.find(params[:id])

    if @guitar.update(edit_guitar_params)
      redirect_to @guitar
    else
      render plain: "Failed to update"
    end
  end

  def destroy
    @guitar = Guitar.find(params[:id])
    @guitar.destroy
    redirect_to root_path
  end

  private

  def guitar_params 
    params.require(:guitar).permit(:title, :price, :description, :user_id)
  end

  def edit_guitar_params 
    params.require(:guitar).permit(:title, :price, :description)
  end
end
