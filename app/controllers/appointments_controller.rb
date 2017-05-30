class AppointmentsController < ApplicationController

  def index
    @appointments = current_user.appointments
  end

  def new
    @appointment = current_user.appointments.build
    @appointment.build_client
  end

  def create
    @appointment =  Appointment.new(appointment_params.merge(user_id: current_user.id))
    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end