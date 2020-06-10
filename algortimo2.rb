class Algoritmo
  def main()
    tablero =[[0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,1,1,1,0,0,0,0],
              [0,0,0,1,1,1,0,0,0,0],
              [0,0,0,1,1,1,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0,0,0],]
    ubicacioni=Array.new(10,0)
    ubicacionj=Array.new(10,0)
    k=0
    #imprimir matriz
    for i in 0..9
      for j in 0..9
        #k=i+1
        print tablero[i][j]
      end
      print "\n"
    end
    #recorre hasta encontrar 1
    for i in 0..9
      for j in 0..9
        if (tablero[i][j]==1)
          print "1 se encuentra en i=",i," j=",j,"\n"
          ubicacioni[k]=i             
          ubicacionj[k]=j  
          k=k+1  
        end
      end
      print "\n" 
    end
    #muere o vive...
    for i in 0..9
      print " i ", ubicacioni[k]
      print " j ", ubicacionj[k],"\n"
      x= ubicacioni[i]
      y = ubicacionj[i]
    end
  end
end
obj = Algoritmo.new
obj.main()
