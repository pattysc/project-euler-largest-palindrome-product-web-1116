# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def answer
    def palindrome?(string)
    	l = string.length - 1
    	first = 0
    	last = l/2

    	i = 0
    	until i > last
    		if string[i] == string[l]
    			i+=1
    			l-=1
    		else
    			return false
    		end
    	end
    		return true
    end

    def largest_palindrome_product
    	index = 999
    	bigpal = 1

    	while index > 99
    		index2 = 999
    		while index2 > 90
    			pal = (index * index2).to_s
    			if palindrome?(pal)
    				if (pal.to_i) > bigpal
    				 	bigpal = pal.to_i
    				 end
    			end
    			index2 -= 1
    		end
    		index -= 1
    	end

    	return bigpal
    end

    largest_palindrome_product
  end
end
