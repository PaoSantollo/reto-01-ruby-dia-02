=begin
celula con uno o ningun vecino muere
celula con 4 o mas muere
celula con 2 o 3 vive
celula con 3 vecino revive
=end

matriz = [[0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,1,1,1,0,0,0,0],
          [0,0,0,1,5,1,0,0,0,0],
          [0,0,0,1,1,1,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0]]
#matriz.each do |i|
 # puts i 
#end 
contador=0
matriz.each_with_index do |element, index|
  puts "#{index}: #{element}"
end

puts matriz[5][4]

for i in(2..9)
  for k in (2..9)
    #print'k', k
    #if i>1 && k>1
    if matriz [i+1][k]==1
      contador=contador+1
    end
    if matriz [i][k-1]==1
      contador=contador+1
    end
    if matriz [i-1][k]==1
      contador=contador+1
    end
    if matriz [i+1][k]==1
      contador=contador+1
    end
    if matriz [i+1][k]==1
      contador=contador+1
    end
    if matriz [i][k+1]==1
      contador=contador+1
    end
    if matriz [i-1][k+1]==1
      contador=contador+1
    end
    if matriz [i][k]==1
      contador=contador+1
    end
  #end
  end
  #print 'i', i
  if contador>4
    matriz [i][k]=0
    contador=0
  end
  if contador==1 || contador==0
    matriz [i][k]=0
    contador=0
  end
  if contador==2 || contador==3
    matriz [i][k]=1
    contador=1
  end

end

#puts contador
matriz.each_with_index do |element, index|
  puts "#{index}: #{element}"
end
#matriz [][]=0;

