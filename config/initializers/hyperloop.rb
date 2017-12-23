#config/initializers/hyperloop.rb

Hyperloop.configuration do |config|

  config.transport = :simple_poller

  config.import 'opal_hot_reloader'

end
