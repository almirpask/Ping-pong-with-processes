defmodule PingPong.Ping do
    def start() do
        wait()
    end

    def wait() do
        receive do 
            {pid, :pong} ->
                send(pid, {self(), :ping})
                IO.puts "I received a Pong"
                Process.sleep(1000)
        end
        wait()
    end
end