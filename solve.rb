alphabel = {}

File.readlines('code').each do |line|
  code = line.split(":")
  alphabel[code[1].strip] = code[0].strip
end

input = []
File.readlines('input').each do |line|
  pp = line.split
  input << pp
end

msg = ""
(0..input[0].size - 1).map { |i| input[0][i] + input[1][i] + input[2][i] }.each do |c|
  puts "#{c}: #{alphabel[c]}"
  if not alphabel[c].nil?
    msg += alphabel[c]
  end
end

puts msg
