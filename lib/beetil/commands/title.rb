module Beetil
  module Commands
    class Title < Command
      def run!
        change = Beetil::Change.find(args.first)
        raise CommandError("Change not found") unless change
        display change.title
      end
    end
  end
end
