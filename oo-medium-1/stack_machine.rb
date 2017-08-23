class Minilang
  COMMANDS = ['PRINT', 'PUSH', 'POP', 'ADD', 'SUB', 'MULT', 'DIV', 'MOD']

  attr_reader :commands, :stack

  def initialize(commands)
    @stack = []
    @register = 0
    @commands = commands
  end

  def eval
    commands.split(' ').each do |command|
      excute(command)
    end
  end

  def excute(command)
    begin
      case command
      when 'PUSH'
        @stack.push(@register)
      when 'POP'
        @register = stack.pop
        raise 'empty' unless @register
      when 'ADD'
        @register += stack.pop
      when 'SUB'
        @register -= stack.pop
      when 'MULT'
        @register *= stack.pop
      when 'DIV'
        @register /= stack.pop
      when 'MOD'
        @register %= stack.pop
      when 'PRINT'
        p @register if @register
      else
        raise 'invalid' unless command.to_i.to_s == command
        @register = command.to_i
      end
    rescue RuntimeError => e
      if e.message == 'empty'
        puts "Empty stack!"
      elsif e.message == 'invalid'
        puts "Invalid token: #{command}"
      end
    end
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval


Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
