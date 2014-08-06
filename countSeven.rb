print(">")
n = STDIN.gets

n= n.to_i

count=0

0.upto(n.to_s.length-1) do |keta|
  tmp=n.to_s[keta].to_i
  if  tmp==7 then
    count+=tmp*(n.to_s.length-(keta+1))*10**(n.to_s.length-(keta+1)-1)+1
    count+=n.to_s.slice(keta+1,n.to_s.length-1).to_i
  end 
  if tmp>7 then
    count+=(tmp*(n.to_s.length-(keta+1))+10)*10**(n.to_s.length-(keta+1)-1)
  end
  if tmp<7 then
    count+=tmp*(n.to_s.length-(keta+1))*10**(n.to_s.length-(keta+1)-1)
    
  end
end

p count
