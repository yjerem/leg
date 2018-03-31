module Leg
  module Commands
    class Init < BaseCommand
      def self.name
        "init"
      end

      def self.summary
        "Initialize a new leg project."
      end

      def self.usage
        ""
      end

      def setopts!(o)
      end

      def run
        if @config
          puts "You are already in a leg working directory."
          return 1
        end

        FileUtils.mkdir_p(".leg/repo")
        FileUtils.mkdir_p("step")
        FileUtils.mkdir_p("doc")
        File.write("doc/tutorial.litdiff", "")
        File.write("leg.yml", "---")

        config = Leg::Config.new(FileUtils.pwd)
        git = Leg::Representations::Git.new(config)
        git.init!
      end
    end
  end
end
