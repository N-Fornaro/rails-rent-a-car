class BookingsController < ApplicationController
  before_action :set_car, only: %i[index show new create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[id])
  end

  def new
    @booking = Booking.new
  end

  def create
    # @booking = Booking.new(booking_params)
    # @booking.user = current_user
    # @booking.car = @car
    # if @booking.save!
    #   redirect_to car_bookings_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :car_id)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
