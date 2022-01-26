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
  class Action
    # globally unique id
    attr_accessor :id

    # parent organization id
    attr_accessor :org_id

    # event pattern to match on, such as change.create.*
    attr_accessor :event

    # cron schedule to run on, in crontab format
    attr_accessor :cron_schedule

    # only run when matching a particular filter
    attr_accessor :filter

    # list of steps to run when matching the event, schedule, and filter
    attr_accessor :steps

    # description of the action
    attr_accessor :description

    # tags to organize the purpose of the action
    attr_accessor :tags

    # status of the action
    attr_accessor :status

    # the user to run the action as - normally the same as the user who created the action
    attr_accessor :run_user_id

    # whether to run with access to sensitive events or not
    attr_accessor :sensitive

    # created by user id
    attr_accessor :create_id

    # created timestamp
    attr_accessor :create_at

    # last updated by user id
    attr_accessor :update_id

    # last updated timestamp
    attr_accessor :update_at

    # deleted by user id
    attr_accessor :delete_id

    # deleted timestamp
    attr_accessor :delete_at

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
        :'id' => :'id',
        :'org_id' => :'orgId',
        :'event' => :'event',
        :'cron_schedule' => :'cronSchedule',
        :'filter' => :'filter',
        :'steps' => :'steps',
        :'description' => :'description',
        :'tags' => :'tags',
        :'status' => :'status',
        :'run_user_id' => :'runUserId',
        :'sensitive' => :'sensitive',
        :'create_id' => :'createId',
        :'create_at' => :'createAt',
        :'update_id' => :'updateId',
        :'update_at' => :'updateAt',
        :'delete_id' => :'deleteId',
        :'delete_at' => :'deleteAt'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'org_id' => :'String',
        :'event' => :'String',
        :'cron_schedule' => :'String',
        :'filter' => :'String',
        :'steps' => :'Array<ActionStep>',
        :'description' => :'String',
        :'tags' => :'Array<String>',
        :'status' => :'String',
        :'run_user_id' => :'String',
        :'sensitive' => :'BOOLEAN',
        :'create_id' => :'String',
        :'create_at' => :'String',
        :'update_id' => :'String',
        :'update_at' => :'String',
        :'delete_id' => :'String',
        :'delete_at' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'orgId')
        self.org_id = attributes[:'orgId']
      end

      if attributes.has_key?(:'event')
        self.event = attributes[:'event']
      end

      if attributes.has_key?(:'cronSchedule')
        self.cron_schedule = attributes[:'cronSchedule']
      end

      if attributes.has_key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.has_key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'runUserId')
        self.run_user_id = attributes[:'runUserId']
      end

      if attributes.has_key?(:'sensitive')
        self.sensitive = attributes[:'sensitive']
      end

      if attributes.has_key?(:'createId')
        self.create_id = attributes[:'createId']
      end

      if attributes.has_key?(:'createAt')
        self.create_at = attributes[:'createAt']
      end

      if attributes.has_key?(:'updateId')
        self.update_id = attributes[:'updateId']
      end

      if attributes.has_key?(:'updateAt')
        self.update_at = attributes[:'updateAt']
      end

      if attributes.has_key?(:'deleteId')
        self.delete_id = attributes[:'deleteId']
      end

      if attributes.has_key?(:'deleteAt')
        self.delete_at = attributes[:'deleteAt']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @org_id.nil?
        invalid_properties.push('invalid value for "org_id", org_id cannot be nil.')
      end

      if @steps.nil?
        invalid_properties.push('invalid value for "steps", steps cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @run_user_id.nil?
        invalid_properties.push('invalid value for "run_user_id", run_user_id cannot be nil.')
      end

      if @sensitive.nil?
        invalid_properties.push('invalid value for "sensitive", sensitive cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @org_id.nil?
      return false if @steps.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE'])
      return false unless status_validator.valid?(@status)
      return false if @run_user_id.nil?
      return false if @sensitive.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          org_id == o.org_id &&
          event == o.event &&
          cron_schedule == o.cron_schedule &&
          filter == o.filter &&
          steps == o.steps &&
          description == o.description &&
          tags == o.tags &&
          status == o.status &&
          run_user_id == o.run_user_id &&
          sensitive == o.sensitive &&
          create_id == o.create_id &&
          create_at == o.create_at &&
          update_id == o.update_id &&
          update_at == o.update_at &&
          delete_id == o.delete_id &&
          delete_at == o.delete_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, org_id, event, cron_schedule, filter, steps, description, tags, status, run_user_id, sensitive, create_id, create_at, update_id, update_at, delete_id, delete_at].hash
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
