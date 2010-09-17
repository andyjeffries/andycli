module AndyCLI
  class ANSI
    def self.set_cursor(x=1, y=1)
      puts "\033[1;#{x};#{y}H"
    end

    def self.clear_screen
      puts "\033[1;2J"
    end

    def self.bright(text=nil)
      ret = "\033[1m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.underlined(text=nil)
      ret = "\033[4m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.slow_blink(text=nil)
      ret = "\033[5m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.fast_blink(text=nil)
      ret = "\033[6m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.red(text=nil)
      ret = "\033[31m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.green(text=nil)
      ret = "\033[32m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.yellow(text=nil)
      ret = "\033[33m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.blue(text=nil)
      ret = "\033[34m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.magenta(text=nil)
      ret = "\033[35m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.cyan(text=nil)
      ret = "\033[36m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.white(text=nil)
      ret = "\033[37m"
      ret += "#{text}#{self.clear}" if text
      ret
    end

    def self.clear
      "\033[0m"
    end
  end
end