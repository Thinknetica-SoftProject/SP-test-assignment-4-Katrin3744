require 'digest'
text=gets.chomp
text_len_first=text.length
num=0
flg=true
md5 = Digest::MD5.new
while flg do
  hash=(md5.update text).to_s
  if hash.slice(0..4)=="00000"
    flg=false
  else
    if(text.length!=text_len_first)
      text=text.slice(0,text.length-(num).to_s.length)
    end
    num=num+1
    text=text+num.to_s
    md5.reset
  end
end
puts(num)