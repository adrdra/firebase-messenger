module FirebaseMessenger
  module Helpers
    # To simplify call of FirebaseMessenger::Connection
    module ConnectHelper
      def conn(url, body = {})
        FirebaseMessenger::Connection.new(url, body)
      end
    end
  end
end
