# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'json'

module RubyProjectExample
  module Functions
    # Code for testing purpose
    class RubyProjectExampleHandler
      class << self
        def event_handler(event:, context:)
          {
            statusCode: 200,
            body: 'Mock Description'.to_json
          }
        end
      end
    end
  end
end
