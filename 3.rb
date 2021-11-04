text=File.open('data/3.txt').read
line_list=[]
N_BYTES = [42].pack('i').size
N_BITS = N_BYTES * 16
MAX = 2 ** (N_BITS - 2) - 1
MIN = -MAX - 1
text.each_line do |line|

  line_list.push(line)
end
for_sum=[]
line_list.each do |line|
  new_line=line.split(/\t| {2,}/)
  max=MIN
  min=MAX
  new_line.each do |num|
    if(num.to_i>max)
      max=num.to_i
    end
    if(num.to_i<min)
      min=num.to_i
    end
  end
  for_sum.push(max-min)
end
sum=0
for_sum.each { |num|sum=sum+num }
puts(sum)