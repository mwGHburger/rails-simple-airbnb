class FlatsController < ApplicationController
  # CREATE
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end
  # READ
  def index
    @flats = Flat.all
  end

  def show
    set_flat
  end

  # UPDATE
  def edit
    set_flat
  end

  def update
    set_flat
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  # DESTROY
  def destroy
    set_flat
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
