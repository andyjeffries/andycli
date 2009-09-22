module CLI
  class ANSI
    def self.set_cursor(x=1, y=1)
      puts "\033[1;#{x};#{y}H"
    end
  
    def self.clear_screen
      puts "\033[1;2J"
    end
  
    def self.red(text=nil)
      ret = "\033[31m"
      ret += "#{text}#{self.clear}" if text
      ret
    end
  
    def self.blue(text=nil)
      ret = "\033[34m"
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
    
    def self.clear
      "\033[0m"
    end
  end
end