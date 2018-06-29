def add_to_airtable(rule)
  airtableRule = AllSoSData.new(
    "Rule Citation" => rule.rule_citation,
    "Rule Description" => rule.rule_description,
    "Proposed Action" => rule.proposed_action,
    "Stage" => rule.stage,
    "Source" => rule.source,
    "date_added" => Time.now
  )

  airtableRule.create
end
