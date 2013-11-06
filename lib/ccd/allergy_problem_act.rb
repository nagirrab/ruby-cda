module Ccd
  class AllergyProblemAct < ::Cda::Act
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="ACT" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:7469).
    constraint 'classCode', cardinality: '1..1', value: 'ACT'

    #SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:7470).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:7471) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.30" (CONF:10489).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.30'

    #SHALL contain at least one [1..*] id (CONF:7472).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:7477).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="48765-2" Allergies, adverse reactions, alerts (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:19158).
    constraint 'code.code', cardinality: '1..1', value: '48765-2'

    #SHALL contain exactly one [1..1] statusCode (CONF:7485).
    constraint 'statusCode', cardinality: '1..1'

    #This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:19086).
    constraint 'statusCode.code', cardinality: '1..1'

    #SHALL contain exactly one [1..1] effectiveTime (CONF:7498).
    constraint 'effectiveTime', cardinality: '1..1'

    #If statusCode/@code="active" Active, then effectiveTime SHALL contain [1..1] low
    constraint 'effectiveTime'

    #If statusCode/@code="completed" Completed, then effectiveTime SHALL contain [1..1] high
    constraint 'effectiveTime'

    #SHALL contain at least one [1..*] entryRelationship (CONF:7509) such that it
    constraint 'entryRelationship', cardinality: '1..*'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:7915).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] Allergy - Intolerance Observation (templateId:2.16.840.1.113883.10.20.22.4.7) (CONF:14925).
    constraint 'entryRelationship.observation', cardinality: '1..1'
  end
end