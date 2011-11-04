# usage:
# Delayed::Job.enqueue(DelayedRake.new("paperclip:refresh:metadata", :class => 'Avatar'))

module SpreeDelayedJob
  class DelayedRake < Struct.new(:task, :options)
    def perform
      env_options = ''
      options && options.stringify_keys!.each do |key, value|
        env_options << " #{key.upcase}=#{value}"
      end
      system("cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake #{task} #{env_options} >> log/#{Time.now.strftime('%Y-%m-%d_%H:%M:%S')}_#{task}.log")
    end
  end
end


