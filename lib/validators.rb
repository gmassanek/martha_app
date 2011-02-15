module ActiveRecord
  module Validations
    module ClassMethods

      
      def validates_as_phone(*attr_names)
        configuration = {
          :message => 'is an invalid phone number',
          :with => /\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})/
        }
        validates_format_of attr_names, configuration
      end

      
#       def validates_as_phone2(*attr_names)
#         configuration = {
#           :message => 'is an invalid phone number'
#         }
# 
#         validates_each(attr_names, configuration) do |record, attr_name, value|
# 
#           n_digits = value.scan(/[0-9]/).size
#           valid_chars = (value =~ /^[+\/\-() 0-9]+$/)
#           if !(preg_replace('\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})', '(\1) \2-\3', value))
#             record.errors.add(attr_name, configuration[:message])
#           end
#         end
#       end


    end
  end
end


