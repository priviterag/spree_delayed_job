require 'delayed_job'

class Admin::SpreeDelayedJobsController < Admin::BaseController
  respond_to :html

  def index
    @jobs = Delayed::Job.all
  end
  
  def create
    if params[:rake]
      Delayed::Job.enqueue(SpreeDelayedJob::DelayedRake.new(params[:job]))
    else
      Delayed::Job.enqueue(params[:job])
    end
    redirect_to :admin_spree_delayed_jobs
  end
end
