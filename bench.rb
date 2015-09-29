require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'foo' }
end

jobs = []
100.times do
  jobs << []
end
Sidekiq::Client.push_bulk 'class' => 'LazyWorker', 'args' => jobs
