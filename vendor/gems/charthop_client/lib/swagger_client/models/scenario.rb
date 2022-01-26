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
  class Scenario
    # globally unique id
    attr_accessor :id

    # parent organization id
    attr_accessor :org_id

    # scenario name
    attr_accessor :name

    # scenario description
    attr_accessor :description

    # date that this scenario diverges from primary
    attr_accessor :start_date

    # status of scenario
    attr_accessor :status

    # users who are specifically granted permission to this scenario
    attr_accessor :share_access

    # summary of cost impact on scenario
    attr_accessor :cost

    # preferred impact summary to display in the top bar
    attr_accessor :impact

    # summary of impact on scenario goals
    attr_accessor :goals

    # number of changes contained in scenario
    attr_accessor :change_count

    # number of changes of each type contained in scenario
    attr_accessor :change_counts

    # number of approved changes in scenario
    attr_accessor :approval_count

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

    # merged by user id
    attr_accessor :merge_id

    # merged timestamp
    attr_accessor :merge_at

    # most recent summary calculation started at timestamp
    attr_accessor :calc_start_at

    # most recent summary calculation ended at timestamp
    attr_accessor :calc_end_at

    # most recent goal calculation ended at timestamp
    attr_accessor :calc_goal_at

    # timestamp of most recent changes made to scenario
    attr_accessor :change_at

    # user who made the most recent change to scenario
    attr_accessor :change_id

    # Type of scenario to be created (either 'general' or 'comp'
    attr_accessor :type

    # whether or not the start date should stay fixed in time, or update to today's date as time passes
    attr_accessor :start_date_fixed

    # Query for selecting which people/jobs are initially included in the scenario (only applies to comp scenarios)
    attr_accessor :query

    # Percentage to increase base compensation (only applies to comp scenarios)
    attr_accessor :percent_increase

    # The total amount to increase base compensation per employee (only applies to comp scenarios, we store the per employee value to compensate for people who may leave in the middle of the review)
    attr_accessor :base_increase_per_reviewee

    # This scenario changes are restricted to the following jobIds
    attr_accessor :valid_job_id_set

    # Requirement for this scenario to merge
    attr_accessor :merge_approval

    # The optional goal id of this scenario
    attr_accessor :goal_id

    # Target budget for this scenario in primary currency
    attr_accessor :target_budget_amount

    # Budget pools associated with this scenario
    attr_accessor :budget_pools

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
        :'name' => :'name',
        :'description' => :'description',
        :'start_date' => :'startDate',
        :'status' => :'status',
        :'share_access' => :'shareAccess',
        :'cost' => :'cost',
        :'impact' => :'impact',
        :'goals' => :'goals',
        :'change_count' => :'changeCount',
        :'change_counts' => :'changeCounts',
        :'approval_count' => :'approvalCount',
        :'create_id' => :'createId',
        :'create_at' => :'createAt',
        :'update_id' => :'updateId',
        :'update_at' => :'updateAt',
        :'delete_id' => :'deleteId',
        :'delete_at' => :'deleteAt',
        :'merge_id' => :'mergeId',
        :'merge_at' => :'mergeAt',
        :'calc_start_at' => :'calcStartAt',
        :'calc_end_at' => :'calcEndAt',
        :'calc_goal_at' => :'calcGoalAt',
        :'change_at' => :'changeAt',
        :'change_id' => :'changeId',
        :'type' => :'type',
        :'start_date_fixed' => :'startDateFixed',
        :'query' => :'query',
        :'percent_increase' => :'percentIncrease',
        :'base_increase_per_reviewee' => :'baseIncreasePerReviewee',
        :'valid_job_id_set' => :'validJobIdSet',
        :'merge_approval' => :'mergeApproval',
        :'goal_id' => :'goalId',
        :'target_budget_amount' => :'targetBudgetAmount',
        :'budget_pools' => :'budgetPools'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'org_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'start_date' => :'String',
        :'status' => :'String',
        :'share_access' => :'Array<ShareAccess>',
        :'cost' => :'CostImpact',
        :'impact' => :'ScenarioImpact',
        :'goals' => :'Array<GoalImpact>',
        :'change_count' => :'Integer',
        :'change_counts' => :'Hash<String, Integer>',
        :'approval_count' => :'Integer',
        :'create_id' => :'String',
        :'create_at' => :'String',
        :'update_id' => :'String',
        :'update_at' => :'String',
        :'delete_id' => :'String',
        :'delete_at' => :'String',
        :'merge_id' => :'String',
        :'merge_at' => :'String',
        :'calc_start_at' => :'String',
        :'calc_end_at' => :'String',
        :'calc_goal_at' => :'String',
        :'change_at' => :'String',
        :'change_id' => :'String',
        :'type' => :'String',
        :'start_date_fixed' => :'String',
        :'query' => :'String',
        :'percent_increase' => :'Float',
        :'base_increase_per_reviewee' => :'Float',
        :'valid_job_id_set' => :'Array<String>',
        :'merge_approval' => :'String',
        :'goal_id' => :'String',
        :'target_budget_amount' => :'Float',
        :'budget_pools' => :'Hash<String, BudgetPool>'
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'shareAccess')
        if (value = attributes[:'shareAccess']).is_a?(Array)
          self.share_access = value
        end
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'impact')
        self.impact = attributes[:'impact']
      end

      if attributes.has_key?(:'goals')
        if (value = attributes[:'goals']).is_a?(Array)
          self.goals = value
        end
      end

      if attributes.has_key?(:'changeCount')
        self.change_count = attributes[:'changeCount']
      end

      if attributes.has_key?(:'changeCounts')
        if (value = attributes[:'changeCounts']).is_a?(Hash)
          self.change_counts = value
        end
      end

      if attributes.has_key?(:'approvalCount')
        self.approval_count = attributes[:'approvalCount']
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

      if attributes.has_key?(:'mergeId')
        self.merge_id = attributes[:'mergeId']
      end

      if attributes.has_key?(:'mergeAt')
        self.merge_at = attributes[:'mergeAt']
      end

      if attributes.has_key?(:'calcStartAt')
        self.calc_start_at = attributes[:'calcStartAt']
      end

      if attributes.has_key?(:'calcEndAt')
        self.calc_end_at = attributes[:'calcEndAt']
      end

      if attributes.has_key?(:'calcGoalAt')
        self.calc_goal_at = attributes[:'calcGoalAt']
      end

      if attributes.has_key?(:'changeAt')
        self.change_at = attributes[:'changeAt']
      end

      if attributes.has_key?(:'changeId')
        self.change_id = attributes[:'changeId']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'startDateFixed')
        self.start_date_fixed = attributes[:'startDateFixed']
      end

      if attributes.has_key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.has_key?(:'percentIncrease')
        self.percent_increase = attributes[:'percentIncrease']
      end

      if attributes.has_key?(:'baseIncreasePerReviewee')
        self.base_increase_per_reviewee = attributes[:'baseIncreasePerReviewee']
      end

      if attributes.has_key?(:'validJobIdSet')
        if (value = attributes[:'validJobIdSet']).is_a?(Array)
          self.valid_job_id_set = value
        end
      end

      if attributes.has_key?(:'mergeApproval')
        self.merge_approval = attributes[:'mergeApproval']
      end

      if attributes.has_key?(:'goalId')
        self.goal_id = attributes[:'goalId']
      end

      if attributes.has_key?(:'targetBudgetAmount')
        self.target_budget_amount = attributes[:'targetBudgetAmount']
      end

      if attributes.has_key?(:'budgetPools')
        if (value = attributes[:'budgetPools']).is_a?(Hash)
          self.budget_pools = value
        end
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @share_access.nil?
        invalid_properties.push('invalid value for "share_access", share_access cannot be nil.')
      end

      if @approval_count.nil?
        invalid_properties.push('invalid value for "approval_count", approval_count cannot be nil.')
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
      return false if @org_id.nil?
      return false if @name.nil?
      return false if @start_date.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE', 'MERGED', 'DRAFT', 'ARCHIVED'])
      return false unless status_validator.valid?(@status)
      return false if @share_access.nil?
      return false if @approval_count.nil?
      return false if @create_id.nil?
      return false if @create_at.nil?
      return false if @update_id.nil?
      return false if @update_at.nil?
      type_validator = EnumAttributeValidator.new('String', ['GENERAL', 'COMP', 'PROMOTION'])
      return false unless type_validator.valid?(@type)
      start_date_fixed_validator = EnumAttributeValidator.new('String', ['FIXED', 'TODAY'])
      return false unless start_date_fixed_validator.valid?(@start_date_fixed)
      merge_approval_validator = EnumAttributeValidator.new('String', ['NONE', 'ALL_CHANGES_APPROVED'])
      return false unless merge_approval_validator.valid?(@merge_approval)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['ACTIVE', 'INACTIVE', 'MERGED', 'DRAFT', 'ARCHIVED'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['GENERAL', 'COMP', 'PROMOTION'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date_fixed Object to be assigned
    def start_date_fixed=(start_date_fixed)
      validator = EnumAttributeValidator.new('String', ['FIXED', 'TODAY'])
      unless validator.valid?(start_date_fixed)
        fail ArgumentError, 'invalid value for "start_date_fixed", must be one of #{validator.allowable_values}.'
      end
      @start_date_fixed = start_date_fixed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merge_approval Object to be assigned
    def merge_approval=(merge_approval)
      validator = EnumAttributeValidator.new('String', ['NONE', 'ALL_CHANGES_APPROVED'])
      unless validator.valid?(merge_approval)
        fail ArgumentError, 'invalid value for "merge_approval", must be one of #{validator.allowable_values}.'
      end
      @merge_approval = merge_approval
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          org_id == o.org_id &&
          name == o.name &&
          description == o.description &&
          start_date == o.start_date &&
          status == o.status &&
          share_access == o.share_access &&
          cost == o.cost &&
          impact == o.impact &&
          goals == o.goals &&
          change_count == o.change_count &&
          change_counts == o.change_counts &&
          approval_count == o.approval_count &&
          create_id == o.create_id &&
          create_at == o.create_at &&
          update_id == o.update_id &&
          update_at == o.update_at &&
          delete_id == o.delete_id &&
          delete_at == o.delete_at &&
          merge_id == o.merge_id &&
          merge_at == o.merge_at &&
          calc_start_at == o.calc_start_at &&
          calc_end_at == o.calc_end_at &&
          calc_goal_at == o.calc_goal_at &&
          change_at == o.change_at &&
          change_id == o.change_id &&
          type == o.type &&
          start_date_fixed == o.start_date_fixed &&
          query == o.query &&
          percent_increase == o.percent_increase &&
          base_increase_per_reviewee == o.base_increase_per_reviewee &&
          valid_job_id_set == o.valid_job_id_set &&
          merge_approval == o.merge_approval &&
          goal_id == o.goal_id &&
          target_budget_amount == o.target_budget_amount &&
          budget_pools == o.budget_pools
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, org_id, name, description, start_date, status, share_access, cost, impact, goals, change_count, change_counts, approval_count, create_id, create_at, update_id, update_at, delete_id, delete_at, merge_id, merge_at, calc_start_at, calc_end_at, calc_goal_at, change_at, change_id, type, start_date_fixed, query, percent_increase, base_increase_per_reviewee, valid_job_id_set, merge_approval, goal_id, target_budget_amount, budget_pools].hash
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
