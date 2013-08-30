module Prompt
  def prompt(heading)
    puts heading
    STDOUT.flush
    gets.chomp
  end
end
