class JobsController < ApplicationController
def new
  @job = Job.new
end

def index
  @jobs = Job.all
end

def edit
  @job = Job.find (params[:id])
end

def update

  @job = Job.find (params[:id])
  @job.update_attributes (job_params)

  redirect_to jobs_path
end

end

def create
 Job.create(params.require(:job).permit(:name, :title))

 redirect_to new_job_path
end
