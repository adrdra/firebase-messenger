module FirebaseMessenger
  module Api
    class Base
      include FirebaseMessenger::Helpers::ConnectHelper

      attr_reader :recipient, :body, :options

      def initialize(recipient = [], body = {}, options = {})
        @body      = body
        @options   = options
        @recipient = recipient
      end

      def params
        { registration_ids: recipient }.merge(body).merge(options)
      end

      private

      def ok?(response)
        return true if response.status == 200
        handle_error(response.status, response)
      end

      def handle_error(status, response)
        case status
        when 400
          raise FirebaseMessenger::BadRequest.new(400)
        when 401
          raise FirebaseMessenger::Unauthorized.new(400)
        when 503
          raise FirebaseMessenger::Unavailable.new(503)
        when 500..599
          raise FirebaseMessenger::ServerError.new(response.status)
        end
      end
    end
  end
end
