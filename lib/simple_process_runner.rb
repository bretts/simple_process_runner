require 'open3'

class SimpleProcessRunner
	def self.run_process(cmd_array, data=nil)
		simple_process = SimpleProcess.new(cmd_array, data)

		return simple_process
	end
end

class SimpleProcess
	def initialize(cmd_array, data=nil)
		stdin, stdout, stderr, @wait_thr = Open3.popen3(*cmd_array)

		@stdout_thread = Thread.new do
			Thread.current[:result] = stdout.read
			stdout.close
		end

		@stderr_thread = Thread.new do
			Thread.current[:result] = stderr.read
			stderr.close
		end

		Thread.new do
			stdin.write data if data
			stdin.close
		end
	end

	def wait
		exit_code = @wait_thr.value.exitstatus
		output    = @stdout_thread.join[:result]
		error     = @stderr_thread.join[:result]

		return exit_code, output, error
	end
end