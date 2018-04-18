class VisitsController < ApplicationController
  
  def index
    
    @patient = Patient.find(params[:patient_id])
    
    @visits = @patient.visits
  end

  def show
    @patient = Patient.find(params[:patient_id])
    
    @visit = @patient.visits.find(params[:id])
  end

  def new
    @patient = Patient.find(params[:patient_id])
    
    @visit = @patient.visits.build
  end
  
  # POST /patient/1/visit
  def create
  @patient = Patient.find(params[:patient_id])
  
  @visit = @patient.visits.build(params.require(:visit).permit(:details))
  
  if @visit.save
    # Save the review successfully
    redirect_to patient_visit_url(@patient, @visit)
    
    else
      render :action => "new"
      
    end
      
end

  def edit
    @patient = Patient.find(params[:patient_id])
    
    @visit = @patient.visits.find(params[:id])
  end
  
  # PUT /movies/1/reviews/2
  def update
    @patient = Patient.find(params[:patient_id])
    
    @visit = Visit.find(params[:id])
    
    if
      @visit.update_attributes(params.require(:visit).permit(:details))
      
      # Save the review successfully
      
      redirect_to patient_visit_url(@patient, @visit)
      
      else
        render :action => "edit"
        
      end
  end
  
  # DELETE /movies/1/reviews/2
  def destroy
    @patient = Patient.find(params[:patient_id])
    @visit = Visit.find(params[:id])
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to patient_visits_path(@patient) }
      format.xml { head :ok }
    end
  end
end
