class Matrizdensa < Matriz
  
    def initialize (x, y, v)
        throw "Dimensiones invalidas" if (x * y) == 0 
        @xsize= x
        @ysize= y 
        @values= Array.new(x * y)
	 for i in (0...@xsize) do
	    	for j in (0...@ysize) do
	      		@values[j * @ysize + i] = v[j * @ysize + i]
	    	end	
	end	
    end   
    
    
    def getx
      @xsize
    end

    def gety
      @ysize
    end
    
    def each
        y, x= 0, 0
        @values.each do |v|
            yield v, x, y
            if (x += 1) >= @xsize
                x= 0; y+= 1
            end
        end
    end
    
   
    
  def [](i, j)
  
    @values[j * @ysize + i]
    
  end
  
  def []=(i, j, v)
  
    @values[j * @ysize + i] = v
    
  end

 end
