module EventMachine
  module WebSocket
    # The close websocket is the same as 06, adds new behaviour for abort
    module Abort08
      def abort(http_status_code = 400)
        @connection.send_data "HTTP/1.1 #{http_status_code} Bad request\r\n\r\n"
        @connection.close_connection_after_writing
      end
    end
  end
end
