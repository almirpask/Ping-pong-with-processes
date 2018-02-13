defmodule PingPong.Pong do
    def start() do
        wait()
    end

    def wait() do
        receive do 
            {pid, :ping} ->
                send(pid, {self(), :pong})
                IO.puts "I received a Ping"
                Process.sleep(1000)
        end
        wait()
    end
end