require 'delayed_job'

class Admin::SpreeDelayedJobsController < Admin::BaseController
  respond_to :html

  def index
    @jobs = Delayed::Job.all
  end
  
  def create
    Delayed::Job.enqueue(SpreeDelayedJob::DelayedRake.new(params[:job]))
    redirect_to :admin_spree_delayed_jobs
  end
end
