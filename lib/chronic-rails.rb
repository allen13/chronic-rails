require 'chronic'

class Class  
   def chronic_date(attr_name)  
      chronic_attr(attr_name,:date) 
   end
   def chronic_time(attr_name)  
     chronic_attr(attr_name)
   end
   def chronic_attr(attr_name,type=:time)
     attr_name = attr_name.to_s       
      class_eval %Q(
        def #{attr_name}=(val)  
          if val.class == String
            self[:#{attr_name}] = Chronic.parse(val).to_#{type.to_s}
          else
            self[:#{attr_name}] = val
          end
        end  
      )
   end
end
