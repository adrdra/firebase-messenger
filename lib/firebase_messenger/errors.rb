module FirebaseMessenger
  class BaseError < StandardError
    attr_reader :code, :message

    def initialize(code)
      @code = code.to_i
      @message = build_message
    end

    private

    def build_message
      case code
      when 400
        return 'Only applies for JSON requests. Indicates that the request'\
               'could not be parsed as JSON, or it contained invalid fields.'
      when 401
        return 'There was an error authenticating the sender account.'
      when 503
        return 'Server is temporarily unavailable'
      when 500..599
        return 'There was an internal error in the FCM server while trying'\
               'to process the request.'
      end
    end
  end

  class Unauthorized < BaseError; end
  class Unavailable < BaseError; end
  class ServerError < BaseError; end
  class BadRequest < BaseError; end
end
