text=File.open('data/1.txt').read
stairs=0
text.each_char do |word|
  if(word==")")
    stairs=stairs-1
  elsif(word=="(")
    stairs=stairs+1
  end
end
puts stairs