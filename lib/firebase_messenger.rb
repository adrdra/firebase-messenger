require 'faraday'
require 'json'
require 'httpclient'
require 'pry'

require 'firebase_messenger/connection'
require 'firebase_messenger/errors'

require 'firebase_messenger/helpers/connect_helper'

require 'firebase_messenger/api/base'
require 'firebase_messenger/api/notification'

# This is start point of the Genm
module FirebaseMessenger
  @api_base = 'https://fcm.googleapis.com/fcm'

  class << self
    attr_accessor :project_id, :api_key, :api_base

    def config
      yield self if block_given?
    end
  end
end
