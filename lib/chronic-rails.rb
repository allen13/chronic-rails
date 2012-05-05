require 'chronic'

class Class  
   def chronic_date(attr_name)  
      attr_name = attr_name.to_s         # make sure it's a string       
      class_eval %Q(
        def #{attr_name}=(val)  
          if val.class == String
            self[:#{attr_name}] = Chronic.parse(val)
          else
            self[:#{attr_name}] = val
          end
        end  
      ) 
   end  
end
