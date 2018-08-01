class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]
  before_action :set_incident_types, only: [:new, :create_incident, :create, :destroy]

 # GET /incidents/1
  # GET /incidents/1.json
  def show
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
  end
  
  # GET /incidents/new
  def create_incident
    @incident = Incident.new
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_incident_types
      @incident_types = IncidentType.all
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_params
      params.require(:incident).permit(:incident_type_id, :description,:people,:other_observers,:location,:date_time_observed,:user_name,:user_phone_or_email,:user_role)
    end
end
