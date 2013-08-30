File.open('file.txt', 'r') do |f1|
  countLines = 0
  lines = Array.new
  while line = f1.gets do
#    puts line
    puts "Number of characters: #{line.length}"
    puts "Number of characters without spaces: #{line.gsub(' ', '').length}"
    puts "Number of words: #{line.split(' ').length}"
    lines[countLines] = line
    countLines = countLines + 1
    puts lines[countLines-1]
  end  
  puts "Number of lines: #{countLines}"
end
