require 'delayed_job'

class Spree::Admin::DelayedJobsController < Spree::Admin::BaseController
  respond_to :html

  def index
    @jobs = Delayed::Job.all
  end
  
  def create
    Delayed::Job.enqueue(SpreeDelayedJob::DelayedRake.new(params[:job]))
    redirect_to :admin_delayed_jobs
  end
end

