text=File.open('data/4.txt').read
sum=0
text.each_line do |line|
  new_line=[]
  copy_line=line.split('x')
  copy_line.each do|key|
    new_line.push(key.to_i)
  end
  new_line=new_line.sort
  one_gift=2*new_line[0]*new_line[2]+2*new_line[0]*new_line[1]+2*new_line[1]*new_line[2]+new_line[0]*new_line[1]
  sum=sum+one_gift
end
puts(sum)