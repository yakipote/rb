bet =500
yen =20000
result = false
count =0
while yen > 0 do
  count+=1
  tmp = [0,1].sample
 if  tmp > 0 then
   yen += bet *1
   result =true
 else
   
   yen= yen-bet
   result=false
 end

  if result == false then
    bet = bet *2
  end
  if result ==true then
    bet =500 
  end
 puts "所持金：#{yen} 回数:#{count} 勝敗:#{result}"
end
