module Ccd
  class PlanOfCareActivityObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8581).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Observation) 2.16.840.1.113883.11.20.9.25 STATIC 2011-09-30 (CONF:8582).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:8583) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.44" (CONF:10512).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.44'

    #SHALL contain at least one [1..*] id (CONF:8584).
    constraint 'id', cardinality: '1..*'
  end
end