require 'delayed_job'

class Admin::SpreeDelayedJobController < Admin::BaseController
  respond_to :html

  def index
    @jobs = Delayed::Job.all
  end
end
