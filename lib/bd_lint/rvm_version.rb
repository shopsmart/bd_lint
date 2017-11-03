module BdLint
  class RvmVersion
    require "mkmf"

    def self.check
      if MakeMakefile.find_executable("rvm")
        rvm_current = %x(rvm current).chomp
        regex = Regexp.new(rvm_current)

        unless regex.match(%x(git config pre-commit.ruby))
          puts "\nPreCommit command is missing or out of date\nConfiguring pre-commit.ruby to use `#{rvm_current}`\n\n"

          %x(git config pre-commit.ruby "rvm `rvm current` do bundle exec ruby")
        else
          true
        end
      end
    end
  end
end
