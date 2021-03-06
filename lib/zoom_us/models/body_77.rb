=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module ZoomUs
  module Models
    class Body77
      # Specify the match type for the blocked list. The values can be one of the following:<br><br> `phoneNumber`: Choose this option (Phone Number Match) if you want to block a specific phone number. Then, in the `phone_number` field, provide the phone number along with the country code.<br><br> `prefix`: Choose this option (Prefix Match) if you want to block all numbers with a specific country code and area code. Next, in the `phone_number` field, enter a country code as part of the prefix. For example, entering 1907 blocks numbers with country code 1 and area code 907.
      attr_accessor :match_type

      # The phone number to be blocked if you passed \"phoneNumber\" as the value for the `match_type` field. If you passed \"prefix\" as the value for the `match_type` field, provide the prefix of the phone number here including the country code. For example, entering 1905 blocks numbers with country code 1 and area code 905.
      attr_accessor :phone_number

      # State whether you want the block type to be inbound or outbound.<br> `inbound`: Pass this value to prevent the blocked number or prefix from calling in to phone users.<br> `outbound`: Pass this value to prevent phone users from calling the blocked number or prefix.
      attr_accessor :block_type

      # Enable or disable the blocking. One of the following values are allowed:<br> `active`: Keep the blocking active.<br> `inactive`: Disable the blocking.
      attr_accessor :status

      # Provide a comment to help you identify the blocked number or prefix.
      attr_accessor :comment

      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values

        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end

        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'match_type' => :'match_type',
          :'phone_number' => :'phone_number',
          :'block_type' => :'block_type',
          :'status' => :'status',
          :'comment' => :'comment'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'match_type' => :'String',
          :'phone_number' => :'String',
          :'block_type' => :'String',
          :'status' => :'String',
          :'comment' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'match_type')
          self.match_type = attributes[:'match_type']
        end

        if attributes.has_key?(:'phone_number')
          self.phone_number = attributes[:'phone_number']
        end

        if attributes.has_key?(:'block_type')
          self.block_type = attributes[:'block_type']
        end

        if attributes.has_key?(:'status')
          self.status = attributes[:'status']
        end

        if attributes.has_key?(:'comment')
          self.comment = attributes[:'comment']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@phone_number.nil? && @phone_number.to_s.length > 50
          invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 50.')
        end

        if !@comment.nil? && @comment.to_s.length > 255
          invalid_properties.push('invalid value for "comment", the character length must be smaller than or equal to 255.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        match_type_validator = EnumAttributeValidator.new('String', ['phoneNumber', 'prefix'])
        return false unless match_type_validator.valid?(@match_type)
        return false if !@phone_number.nil? && @phone_number.to_s.length > 50
        block_type_validator = EnumAttributeValidator.new('String', ['inbound', 'outbound'])
        return false unless block_type_validator.valid?(@block_type)
        status_validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
        return false unless status_validator.valid?(@status)
        return false if !@comment.nil? && @comment.to_s.length > 255
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] match_type Object to be assigned
      def match_type=(match_type)
        validator = EnumAttributeValidator.new('String', ['phoneNumber', 'prefix'])
        unless validator.valid?(match_type)
          fail ArgumentError, 'invalid value for "match_type", must be one of #{validator.allowable_values}.'
        end
        @match_type = match_type
      end

      # Custom attribute writer method with validation
      # @param [Object] phone_number Value to be assigned
      def phone_number=(phone_number)
        if !phone_number.nil? && phone_number.to_s.length > 50
          fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 50.'
        end

        @phone_number = phone_number
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] block_type Object to be assigned
      def block_type=(block_type)
        validator = EnumAttributeValidator.new('String', ['inbound', 'outbound'])
        unless validator.valid?(block_type)
          fail ArgumentError, 'invalid value for "block_type", must be one of #{validator.allowable_values}.'
        end
        @block_type = block_type
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] status Object to be assigned
      def status=(status)
        validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
        unless validator.valid?(status)
          fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
        end
        @status = status
      end

      # Custom attribute writer method with validation
      # @param [Object] comment Value to be assigned
      def comment=(comment)
        if !comment.nil? && comment.to_s.length > 255
          fail ArgumentError, 'invalid value for "comment", the character length must be smaller than or equal to 255.'
        end

        @comment = comment
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          match_type == o.match_type &&
          phone_number == o.phone_number &&
          block_type == o.block_type &&
          status == o.status &&
          comment == o.comment
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [match_type, phone_number, block_type, status, comment].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
            end
          elsif !attributes[self.class.attribute_map[key]].nil?
            self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
          end # or else data not found in attributes(hash), not an issue as the data can be optional
        end

        self
      end

      # Deserializes the data based on type
      # @param string type Data type
      # @param string value Value to be deserialized
      # @return [Object] Deserialized data
      def _deserialize(type, value)
        case type.to_sym
        when :DateTime
          ::DateTime.parse(value)
        when :Date
          ::Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :BOOLEAN
          if value.to_s =~ /\A(true|t|yes|y|1)\z/i
            true
          else
            false
          end
        when :Object
          # generic object (usually a Hash), return directly
          value
        when /\AArray<(?<inner_type>.+)>\z/
          inner_type = Regexp.last_match[:inner_type]
          value.map { |v| _deserialize(inner_type, v) }
        when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
          k_type = Regexp.last_match[:k_type]
          v_type = Regexp.last_match[:v_type]
          {}.tap do |hash|
            value.each do |k, v|
              hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
            end
          end
        else # model
          temp_model = Models.const_get(type).new
          temp_model.build_from_hash(value)
        end
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        to_hash.to_s
      end

      # to_body is an alias to to_hash (backward compatibility)
      # @return [Hash] Returns the object in the form of hash
      def to_body
        to_hash
      end

      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          next if value.nil?
          hash[param] = _to_hash(value)
        end
        hash
      end

      # Outputs non-array value in the form of hash
      # For object, use to_hash. Otherwise, just return the value
      # @param [Object] value Any valid value
      # @return [Hash] Returns the value in the form of hash
      def _to_hash(value)
        if value.is_a?(Array)
          value.compact.map { |v| _to_hash(v) }
        elsif value.is_a?(Hash)
          {}.tap do |hash|
            value.each { |k, v| hash[k] = _to_hash(v) }
          end
        elsif value.respond_to? :to_hash
          value.to_hash
        else
          value
        end
      end
    end
  end
end
