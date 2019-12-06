#using a stack to make a missing bracket checker for code.

class Linter
  attr_reader :error

  def initialize
    @stack =[]
  end

  def lint(text)
    text.chars.each do |char|
      if opening_brace?(char) 
        @stack.push(char)
      elsif closing_bracket?(char)
        if closing_matches_opening?(char)
          @stack.pop 
        else  
          @error= "Mismatched/missing pair for closing brace: #{char}  in your code please fix it !  "
          return
        end
      end
    end 
    if @stack.any?
      @error = " This bracket opening bracket: / #{@stack.last} / has no matching closing pair "
    end
  end 


  private
  def opening_brace?(char)
    ["(","[","{"].include?(char)
  end 

  def closing_bracket?(char)
    [")","]","}"].include?(char)
  end  

  def last_bracket_inside_stack
    @stack.last
  end 

  def this_closing_bracket?(char)
    {")"=>"(","]" =>"[","}"=>"{"}[char]
  end
   
  def closing_matches_opening?(char)
    this_closing_bracket?(char) == last_bracket_inside_stack
  end
end

linter = Linter.new 
linter.lint("{Hello world")
puts linter.error
