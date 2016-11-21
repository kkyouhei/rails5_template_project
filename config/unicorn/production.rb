worker_processes 2
# rename your server path
app_directory = "/var/www/template_project/current"
working_directory app_directory # available in 0.94.0+
listen "#{app_directory}/tmp/sockets/unicorn.sock", backlog: 128
timeout 30
pid "#{app_directory}/tmp/pids/unicorn.pid"

stderr_path "#{app_directory}/log/unicorn_pro_error.log"
stdout_path "#{app_directory}/log/unicorn_pro.log"

preload_app true
GC.respond_to?(:copy_on_write_friendly=) and
  GC.copy_on_write_friendly = true

before_exec do |server|
  ENV["BUNDLE_GEMFILE"] = "#{app_directory}/Gemfile"
end

before_fork do |server, worker|
  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
  sleep 1
end
