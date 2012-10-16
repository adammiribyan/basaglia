root_path = "/home/basaglia/apps/basaglia/current"
working_directory root_path
pid "#{root_path}/tmp/pids/unicorn.pid"
stderr_path "#{root_path}/log/unicorn.log"
stdout_path "#{root_path}/log/unicorn.log"

listen "/tmp/unicorn.basaglia.sock"
worker_processes 2
timeout 30
