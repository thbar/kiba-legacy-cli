require 'kiba'
require_relative 'legacy_parser'

module Kiba
  module Legacy
    module CLI
      module_function

      def run(args)
        unless args.size == 1
          puts 'Syntax: kiba-legacy-cli your-script.etl'
          exit(-1)
        end
        filename = args[0]
        script_content = IO.read(filename)
        job_definition = Kiba::LegacyParser.parse(script_content, filename)
        Kiba.run(job_definition)
      end
    end
  end
end
