class VisitController < ApplicationController
  
  # GET /patients/1/visit
  def index
    @patients = Patient.find(params[:patients_id])
    
    @visits = @patients.visit
  end

  def show
    @patients = Patient.find(params[:patients_id])
    
    @visit = @patients.visit.find(params[:id])
  end
  
  # GET /patients/1/visit/new
  def new
    @patients = Patient.find(params[:patients_id])
    
    @visit = @patients.visit.build
  end
  
  # POST /patients/1/visit
def create
  @patients = Patient.find(params[:patients_id])
  
  @visit = @patients.visit.build(params.require(:visit).permit(:details))
  
  if @visit.save
    # Save the review successfully
    redirect_to patients_visit_url(@patients, @visit)
    
    else
      render :action => "new"
      
    end
      
end

  def edit
    @patients = Patient.find(params[:patients_id])
    
    @visit = @patients.visit.find(params[:id])
  end
  
  
  
  # PUT /movies/1/reviews/2
  def update
    @patients = Patient.find(params[:patients_id])
    
    @visit = Patient.find(params[:id])
    
    if
      @visit.update_attributes(params.require(:visit).permit(:details))
      # Save the review successfully
      redirect_to patients_visit_url(@patients, @visit)
      
      else
        render :action => "edit"
        
      end
  end
  
end
