# Performance tests Sidekiq vs Resque

Benchmarking Sidekiq and Resque for a Rails app (call to external Flickr api)

Based on the `myapp` on sidekiq. Added resque equivalent code for benchmark purposes

## Running Sidekiq

* Install redis (brew install redis on mac)
* redis-cli flushall
* git clone git://github.com/heri/sidekiq-resque-benchmark
* cd sidekiq-resque-benchmark
* bundle
* bundle exec ruby bench.rb (loads 20k jobs into redis)
* bundle exec sidekiq


## Running Resque

* Install redis
* redis-cli flushall
* git clone git://github.com/heri/sidekiq-resque-benchmark
* cd sidekiq-resque-benchmark
* bundle update
* rails server
* view localhost:3000 to start 100 jobs
* QUEUE=normal rake resque:work

Typical results demonstrate order of magnitude speed increase of sidekiq vs resque. Resque however has free web dashboard and scheduler.

See also http://www.mikeperham.com/2013/06/30/background-job-processing-overhead/ for more performance benchmarks.
