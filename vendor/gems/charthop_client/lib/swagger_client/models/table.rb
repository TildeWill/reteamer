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
  class Table
    # globally unique id
    attr_accessor :id

    # parent org id
    attr_accessor :org_id

    # name of table
    attr_accessor :name

    # human readable label for the table
    attr_accessor :label

    # columns that are used in this table
    attr_accessor :columns

    # whether or not the table is time tracked with effective dates (allows time travel or not). If false, then the values set in the table will be the same across all dates.
    attr_accessor :effective_dated

    # users who are specifically granted permission to this table
    attr_accessor :share_access

    # number of rows in the table
    attr_accessor :row_count

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

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'org_id' => :'orgId',
        :'name' => :'name',
        :'label' => :'label',
        :'columns' => :'columns',
        :'effective_dated' => :'effectiveDated',
        :'share_access' => :'shareAccess',
        :'row_count' => :'rowCount',
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
        :'name' => :'String',
        :'label' => :'String',
        :'columns' => :'Array<TableColumn>',
        :'effective_dated' => :'BOOLEAN',
        :'share_access' => :'Array<ShareAccess>',
        :'row_count' => :'Integer',
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'columns')
        if (value = attributes[:'columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.has_key?(:'effectiveDated')
        self.effective_dated = attributes[:'effectiveDated']
      end

      if attributes.has_key?(:'shareAccess')
        if (value = attributes[:'shareAccess']).is_a?(Array)
          self.share_access = value
        end
      end

      if attributes.has_key?(:'rowCount')
        self.row_count = attributes[:'rowCount']
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @columns.nil?
        invalid_properties.push('invalid value for "columns", columns cannot be nil.')
      end

      if @effective_dated.nil?
        invalid_properties.push('invalid value for "effective_dated", effective_dated cannot be nil.')
      end

      if @share_access.nil?
        invalid_properties.push('invalid value for "share_access", share_access cannot be nil.')
      end

      if @row_count.nil?
        invalid_properties.push('invalid value for "row_count", row_count cannot be nil.')
      end

      if @create_id.nil?
        invalid_properties.push('invalid value for "create_id", create_id cannot be nil.')
      end

      if @create_at.nil?
        invalid_properties.push('invalid value for "create_at", create_at cannot be nil.')
      end

      if @update_id.nil?
        invalid_properties.push('invalid value for "update_id", update_id cannot be nil.')
      end

      if @update_at.nil?
        invalid_properties.push('invalid value for "update_at", update_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @label.nil?
      return false if @columns.nil?
      return false if @effective_dated.nil?
      return false if @share_access.nil?
      return false if @row_count.nil?
      return false if @create_id.nil?
      return false if @create_at.nil?
      return false if @update_id.nil?
      return false if @update_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          org_id == o.org_id &&
          name == o.name &&
          label == o.label &&
          columns == o.columns &&
          effective_dated == o.effective_dated &&
          share_access == o.share_access &&
          row_count == o.row_count &&
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
      [id, org_id, name, label, columns, effective_dated, share_access, row_count, create_id, create_at, update_id, update_at, delete_id, delete_at].hash
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
