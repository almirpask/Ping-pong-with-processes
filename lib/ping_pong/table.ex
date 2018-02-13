defmodule PingPong.Table do
    def start() do
        ping = spawn(PingPong.Ping, :start, [])
        pong = spawn(PingPong.Pong, :start, [])

        send(ping, {pong, :pong})
        
    end
end