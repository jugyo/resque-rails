resque-rails
====

The railtie for setup resque. It provides an initializer and rake tasks.

    module Resque::Rails
      class Railtie < Rails::Railtie
        initializer 'resque.set_config' do
          Resque.redis ||= 'localhost:6379'
        end

        rake_tasks do
          require 'resque/tasks'
          task "resque:setup" => :environment
        end
      end
    end

That's it!

See also: [https://github.com/defunkt/resque](https://github.com/defunkt/resque)
