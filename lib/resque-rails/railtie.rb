module Resque::Rails
  class Railtie < Rails::Railtie
    extend Rake::DSL

    initializer 'resque.set_config' do
      Resque.redis ||= 'localhost:6379'
    end

    rake_tasks do
      require 'resque/tasks'
      task "resque:setup" => :environment
    end
  end
end
