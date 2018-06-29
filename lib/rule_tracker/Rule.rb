class Rule
  attr_accessor :rule_citation,
                :rule_description,
                :proposed_action,
                :stage,
                :source

  def initialize(rule_citation, rule_description, action, stage, file_name)
    @rule_citation = rule_citation
    @rule_description = rule_description
    @proposed_action = action
    @stage = stage
    @source = file_name
  end
end
