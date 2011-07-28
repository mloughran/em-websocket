module EventMachine
  module WebSocket
    class Handler08 < Handler
      include Handshake04
      include Framing07
      include MessageProcessor06
      include Close06
      include Abort08
    end
  end
end
