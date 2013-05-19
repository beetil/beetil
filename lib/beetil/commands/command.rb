module Beetil
  module Commands
    class Command
      class CommandError < StandardError; end

      attr_reader :args
      def initialize(args)
        @args = args
      end

      def self.run!(command, args)
        # FIXME explicit configuration, and some form of checking ?
        Title.new(args).run! if command == "beetil"
      end

      protected
      # TODO use different output
      def display(message)
        puts message
      end
    end
  end
end
