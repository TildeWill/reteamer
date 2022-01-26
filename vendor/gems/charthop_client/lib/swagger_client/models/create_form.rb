=begin
#ChartHop API

#REST API for ChartHop

OpenAPI spec version: V1.0.0
Contact: support@charthop.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.25

=end

require 'date'

module SwaggerClient
  class CreateForm
    # human-readable full name of form
    attr_accessor :label

    # description of form
    attr_accessor :description

    # ordered list of fields being collected in this form
    attr_accessor :fields

    # ordered list of blocks being collected in this form
    attr_accessor :blocks

    # status of the form
    attr_accessor :status

    # type of the form
    attr_accessor :type

    # view sensitivity of the form - only people with view access to the form can collect the data
    attr_accessor :sensitive

    # approval needed, if any approval is required
    attr_accessor :approval

    # view sensitivity for the author author of this form - the level of view access required to view the createId and updateId fields
    attr_accessor :author_sensitive

    # options, such as notification settings
    attr_accessor :options

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
        :'label' => :'label',
        :'description' => :'description',
        :'fields' => :'fields',
        :'blocks' => :'blocks',
        :'status' => :'status',
        :'type' => :'type',
        :'sensitive' => :'sensitive',
        :'approval' => :'approval',
        :'author_sensitive' => :'authorSensitive',
        :'options' => :'options'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'label' => :'String',
        :'description' => :'String',
        :'fields' => :'Array<FormField>',
        :'blocks' => :'Array<FormBlock>',
        :'status' => :'String',
        :'type' => :'String',
        :'sensitive' => :'String',
        :'approval' => :'String',
        :'author_sensitive' => :'String',
        :'options' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.has_key?(:'blocks')
        if (value = attributes[:'blocks']).is_a?(Array)
          self.blocks = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'sensitive')
        self.sensitive = attributes[:'sensitive']
      end

      if attributes.has_key?(:'approval')
        self.approval = attributes[:'approval']
      end

      if attributes.has_key?(:'authorSensitive')
        self.author_sensitive = attributes[:'authorSensitive']
      end

      if attributes.has_key?(:'options')
        self.options = attributes[:'options']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @fields.nil?
        invalid_properties.push('invalid value for "fields", fields cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @sensitive.nil?
        invalid_properties.push('invalid value for "sensitive", sensitive cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @label.nil?
      return false if @fields.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE', 'TODO', 'ARCHIVED'])
      return false unless status_validator.valid?(@status)
      type_validator = EnumAttributeValidator.new('String', ['BUILT_IN', 'CUSTOM'])
      return false unless type_validator.valid?(@type)
      return false if @sensitive.nil?
      sensitive_validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      return false unless sensitive_validator.valid?(@sensitive)
      approval_validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      return false unless approval_validator.valid?(@approval)
      author_sensitive_validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      return false unless author_sensitive_validator.valid?(@author_sensitive)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE', 'TODO', 'ARCHIVED'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['BUILT_IN', 'CUSTOM'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sensitive Object to be assigned
    def sensitive=(sensitive)
      validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      unless validator.valid?(sensitive)
        fail ArgumentError, 'invalid value for "sensitive", must be one of #{validator.allowable_values}.'
      end
      @sensitive = sensitive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] approval Object to be assigned
    def approval=(approval)
      validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      unless validator.valid?(approval)
        fail ArgumentError, 'invalid value for "approval", must be one of #{validator.allowable_values}.'
      end
      @approval = approval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] author_sensitive Object to be assigned
    def author_sensitive=(author_sensitive)
      validator = EnumAttributeValidator.new('String', ['GLOBAL', 'ORG', 'ORG_OTHER', 'PERSONAL_DEMOG', 'PERSONAL_BIRTH', 'PERSONAL_CONTACT', 'PERSONAL_PRIVATE', 'SENSITIVE_BIRTH', 'SENSITIVE_CONTACT', 'TIMEOFF', 'COMP_CASH', 'COMP_EQUITY', 'SENSITIVE', 'PERSONAL', 'MANAGER', 'GRAND_MANAGER', 'DIRECT', 'PEERS', 'HIGH', 'PRIVATE'])
      unless validator.valid?(author_sensitive)
        fail ArgumentError, 'invalid value for "author_sensitive", must be one of #{validator.allowable_values}.'
      end
      @author_sensitive = author_sensitive
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          label == o.label &&
          description == o.description &&
          fields == o.fields &&
          blocks == o.blocks &&
          status == o.status &&
          type == o.type &&
          sensitive == o.sensitive &&
          approval == o.approval &&
          author_sensitive == o.author_sensitive &&
          options == o.options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [label, description, fields, blocks, status, type, sensitive, approval, author_sensitive, options].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
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
        temp_model = SwaggerClient.const_get(type).new
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
