# = matriz.rb
#
# Autor:: Juan Antonio Oliva Pérez
#
# === Clase Matriz
#
# Definición de la clase Matriz compuesta por
# * metodo initialize
# * metodo constructor
# * metodo getf
# * metodo getc
# * metodo +
# * metodo -
# * metodo min ==
# * metodo *
# * metodo max
# * metodo min
#

class Matriz

    def initialize(x, y)
          throw "Dimensiones invalidas" if (x * y) == 0 
          @xsize= x
          @ysize= y 
    
    end

    def Matriz.constructor (x, y, v)
	  zero = 0
	  for i in (0...x) do
	    	for j in (0...y) do
		  if (v[j * y + i].is_a?(Racional)==false)
			  if (v[j * y + i] == 0)
				  zero = zero +1
			  end
			end
		end
	  end
	if ((zero * 100)/(x * y) >= 60)
		Matrizdispersa.new((x*y)-zero, x, y, v)
	else
		Matrizdensa.new(x, y, v)
	end
    end

#Metodo para el numero de filas

   def getf
   
     @xsize
   
   end

#Metodo para el numero de columnas
  
   def getc
   
     @ysize
   
   end
   
   #Metodo para la suma de matrices
  def +(object)
  
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      
      v = Array.new
      
      @xsize.times{
	|i|
	@ysize.times{
	  |j|
	 if((object[i,j].is_a? Numeric) && (self[i,j].is_a?(Racional)==true))
	   
	   aux = Racional.new(object[i,j],1)
	   
	   v << (self[i ,j] + aux)
	   
	 elsif((self[i,j].is_a? Numeric) && (object[i,j].is_a?(Racional)==true))
	   
	   aux = Racional.new(self[i,j],1)
	   
	   v << (aux + object[i, j])
	   
	 else
	   
	   v << (self[i ,j] + object[i, j])
	   
	 end
	 
                    }
	
      }
      
      Matriz.constructor(@xsize, @ysize, v)
      
    end
  
  end
  
  #Metodo para la resta de matrices
  
   def -(object)
  
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      
      v = Array.new
      
      for i in (0...@xsize) do
	
	for j in (0...@ysize) do
	  
	 if((object[i,j].is_a? Numeric) && (self[i,j].is_a?(Racional)==true))
	   
	   aux = Racional.new(object[i,j],1)
	   
	   v << (self[i ,j] - aux)
	   
	 elsif((self[i,j].is_a? Numeric) && (object[i,j].is_a?(Racional)==true))
	   
	   aux = Racional.new(self[i,j],1)
	   
	   v << (aux - object[i, j])
	   
	 else
	   
	   v << (self[i ,j] - object[i, j])
	   
	 end
	 
	end
	
      end
      
      Matriz.constructor(@xsize, @ysize, v)
      
    end
  
  end
  
#Metodo para comparar  

  def ==(object)
   
    if ((@xsize == object.getf) && (@ysize == object.getc))  
      for i in (0...@xsize) do
	
	for j in (0...@ysize) do
	  
	 if((object[i,j].is_a? Numeric) && (self[i,j].is_a?(Racional)==true))
	   
	   aux = Racional.new(object[i,j],1)
	   
	   if (self[i ,j] == aux)
	     
	     aux = true
	     
	   else
	     
	     aux = false
	     
	   end
	   
	 elsif((self[i,j].is_a? Numeric) && (object[i,j].is_a?(Racional)==true))	   
	   
	   aux = Racional.new(self[i,j],1)
	   
	   if (object[i ,j] == aux)
	     
	     aux = true
	     
	   else
	     
	     aux = false
	     
	   end
	      else
		
	  if (self[i, j] == object[i, j])
	    
	    aux = true
	    
	  else
	    
	    aux = false
	    
	  end
	  
	end
	
      end
      
      aux
      
    end
    
  end
  
 end
 
#Metodo para el producto de matrices

   def *(object)
     if(object.is_a? Numeric)
      v = Array.new
      @xsize.times{ |i|
	@ysize.times{ |j|           
	  v << (self[i,j] * object)
                    }
                  }
      return Matriz.constructor(@xsize,@ysize, v)
      
     elsif((object.is_a?(Matriz)==true) && (@ysize == object.getf()))
       v = Array.new
      @xsize.times{ |i|
	@ysize.times{ |j|           
	   v << 0
	 @ysize.times{ |k|
	   v[(v.size)-1] = (v.last + (self[i,k] * object[k,j]))
                     }
	      }
        }
      return Matriz.constructor(@xsize,object.getc, v)
      
      
    end
end

#Metodo para el maximo

  def max
    
    aux = 0
    for i in (0...@xsize) do
	for j in (0...@ysize) do
	  if (self[i, j] > aux)
	      aux = self[i, j]
	  end
	end
      end
    aux
  end

#Metodo para el minimo

  def min
    
    aux = 100
    for i in (0...@xsize) do
	for j in (0...@ysize) do
	  if (self[i, j] < aux)
	      aux = self[i, j]
	  end
	end
      end
    aux
  end









end
