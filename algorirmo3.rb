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
  
    n=0
    m=0
    mt=9
    nt=9
    x=0
    y=0
    xt=9
    yt=9
    cont=0

    while n < nt
      while m < mt
        print tablero[n][m]
        m=m+1
      end
      print "\n"
      n=n+1
      m=0
    end
    
    while y < yt
      while x < yt
        print tablero[x][y]
        if (tablero[x][y]==1)
          print "se encontro viva"
          if( x > 1)
            #vecinos
            auxx=x-1
            auxy=y+1
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x
            auxy=y+1
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x+1
            auxy=y+1
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x-1
            auxy=y
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x+1
            auxy=y
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x
            auxy=y-1
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
            auxx=x+1
            auxy=y-1
            if(tablero[auxx][auxy]==1)
              cont =cont+1
            end
          else 
            print  " es menor 1"
          end
          #vive o muere?
          if ( cont == 0 ||cont== 1)
            print "muere por soledad"
          end
          if ( cont == 2 ||  cont==3)
            print "vive / revive"
          end
          if ( cont >= 4)
            print "muere por sobreopoblacion"
          end
        end
        x=x+1
      end
      print "\n"
      y=y+1
      x=0
    end
  end
end

obj=Algoritmo.new
obj.main()
