class Matrizdispersa < Matriz
  
    def initialize (size, x, y, v)
	  super(x,y)
	@vfilas= Array.new
        @vcolumnas= Array.new 
        @values= Array.new
	for i in (0...x*y) do
	  if(v[i].is_a? Numeric)
	  if (v[i] != 0)
	    @values << (v[i])
	    @vfilas << (i/y)
	    @vcolumnas << (i%x)
	  elsif(v[i].is_a?(Racional)==true)
	    @values << (v[i])
	    @vfilas << (i/y)
	    @vcolumnas << (i%x)
	  end
	  end
	end 
    end
    
    
    


    def [](f, c)
      no_nulo = @values.size
      for i in (0...no_nulo) do
	  if ((@vfilas[i] == f) && (@vcolumnas[i] == c))
	     return @values[i]
	  end
	end
      0
    end
    
    def []=(f, c, v)
     
      for i in (0..@size) do 
	if(( @vfilas[i] == f) && (@vcolumnas[i] == c) && (v != 0))
	   @values[i] = v
	elsif(( @vfilas[i] == f) && (@vcolumnas[i] == c) && (v == 0))
	   @values.delete_at(i)
	   @vfilas.delete_at(i)
	   @vcolumnas.delete_at(i)	  
	else (v != 0)
	   @values << (v)
	   @vfilas << (f)
	   @vcolumnas << (c)
	end
      end
   
   end 
    
    
end