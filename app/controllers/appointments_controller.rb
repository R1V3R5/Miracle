class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_appointment, only: [:show, :edit, :update, :destroy]
  
  # GET /appointments
  # GET /appointments.json
  def index
    authorize! :read, Appointment
    @appointments = Appointment.all.accessible_by(current_ability, :manage)
    @hash = Gmaps4rails.build_markers(@appointments) do |appointment, marker|
      marker.lat appointment.latitude
      marker.lng appointment.longitude
      marker.infowindow appointment.title
    end
  end

  def new
    authorize! :create, Appointment 
    @appointment = Appointment.new 
  end

  def create
    authorize! :create, Appointment 
    @appointment = Appointment.new appointment_params
    @appointment.save
    respond_with(@appointment)
  end

  def update
    authorize! :update, Appointment
    @appointment.update_attributes appointment_params
    @appointment.save
    respond_with(@appointment)
  end

  def edit
  authorize! :update, Appointment
  end

  def destroy
    authorize! :destroy, Appointment
    @appointment.destroy
    redirect_to appointments_path
  end

  def show
  authorize! :read, Appointment
  end

private

  def appointment_params
    params.require(:appointment).permit(
                                        :title, 
                                        :date, 
                                        :user_id, 
                                        :latitude,
                                        :longitude,
                                        :address,
                                        :city,
                                        :state,
                                        :zip,
                                        :phone
                                        ).merge(user_id: current_user.id)
  end

  def find_appointment
    @appointment = Appointment.find params[:id]
  end
  

end
