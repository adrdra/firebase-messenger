module FirebaseMessenger
  module Api
    class Notification < Base
      def send
        response = conn('send', params).post
        JSON.parse(response.body) if ok?(response)
      end
    end
  end
end
