module Ccd
  class ProcedureActivityObservation < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8282).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:8237).
    constraint 'moodCode', cardinality: '1..1'

    #SHALL contain exactly one [1..1] templateId (CONF:8238) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.13" (CONF:10520).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.13'

    #SHALL contain at least one [1..*] id (CONF:8239).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:19197).
    constraint 'code', cardinality: '1..1'

    #This code SHOULD contain zero or one [0..1] originalText (CONF:19198).
    constraint 'code.originalText', cardinality: '0..1'

    #The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:19199).
    constraint 'code.originalText.reference', cardinality: '0..1'

    #The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:19200).
    constraint 'code.originalText.reference.value', cardinality: '0..1'

    #This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).
    constraint 'code.originalText.reference.value'

    #This @code SHOULD be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12), ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4).
    constraint 'code'

    #SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:8245).
    constraint 'statusCode', cardinality: '1..1'

    #SHOULD contain zero or one [0..1] effectiveTime (CONF:8246).
    constraint 'effectiveTime', cardinality: '0..1'

    #MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:8247).
    constraint 'priorityCode', cardinality: '0..1'

    #SHALL contain exactly one [1..1] value (CONF:16846).
    constraint 'value', cardinality: '1..1'

    #MAY contain zero or one [0..1] methodCode (CONF:8248).
    constraint 'methodCode', cardinality: '0..1'

    #methodCode SHALL NOT conflict with the method inherent in Observation / code.
    constraint 'methodCode'

    #SHOULD contain zero or more [0..*] targetSiteCode (CONF:8250).
    constraint 'targetSiteCode', cardinality: '0..*'

    #The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:16071).
    constraint 'targetSiteCode.code', cardinality: '1..1'

    #SHOULD contain zero or more [0..*] performer (CONF:8251).
    constraint 'performer', cardinality: '0..*'

    #The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:8252).
    constraint 'performer.assignedEntity', cardinality: '1..1'

    #This assignedEntity SHALL contain at least one [1..*] id (CONF:8253).
    constraint 'performer.assignedEntity.id', cardinality: '1..*'

    #This assignedEntity SHALL contain exactly one [1..1] addr (CONF:8254).
    constraint 'performer.assignedEntity.addr', cardinality: '1..1'

    #This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:8255).
    constraint 'performer.assignedEntity.telecom', cardinality: '1..1'

    #This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:8256).
    constraint 'performer.assignedEntity.representedOrganization', cardinality: '0..1'

    #The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:8257).
    constraint 'performer.assignedEntity.representedOrganization.id', cardinality: '0..*'

    #The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:8258).
    constraint 'performer.assignedEntity.representedOrganization.name', cardinality: '0..*'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:8260).
    constraint 'performer.assignedEntity.representedOrganization.telecom', cardinality: '1..1'

    #The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:8259).
    constraint 'performer.assignedEntity.representedOrganization.addr', cardinality: '1..1'

    #MAY contain zero or more [0..*] participant (CONF:8261).
    constraint 'participant', cardinality: '0..*'

    #The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8262).
    constraint 'participant.typeCode', cardinality: '1..1', value: 'LOC'

    #The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (templateId:2.16.840.1.113883.10.20.22.4.32) (CONF:15904).
    constraint 'participant.participantRole', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8264).
    constraint 'entryRelationship', cardinality: '0..*'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8265).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8266).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #The entryRelationship, if present, SHALL contain exactly one [1..1] encounter (CONF:8267).
    constraint 'entryRelationship.encounter', cardinality: '1..1'

    #This encounter SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:8268).
    constraint 'entryRelationship.encounter.classCode', cardinality: '1..1', value: 'ENC'

    #This encounter SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:8269).
    constraint 'entryRelationship.encounter.moodCode', cardinality: '1..1', value: 'EVN'

    #This encounter SHALL contain exactly one [1..1] id (CONF:8270).
    constraint 'entryRelationship.encounter.id', cardinality: '1..1'

    #Set encounter/id to the id of an encounter in another section to signify they are the same encounter.
    constraint 'entryRelationship.encounter.id'

    #MAY contain zero or one [0..1] entryRelationship (CONF:8272) such that it
    constraint 'entryRelationship', cardinality: '0..1'

    #SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8273).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'SUBJ'

    #SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:8274).
    constraint 'entryRelationship.inversionInd', cardinality: '1..1', value: 'true'

    #SHALL contain exactly one [1..1] Instructions (templateId:2.16.840.1.113883.10.20.22.4.20) (CONF:15905).
    constraint 'entryRelationship.act', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8276) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8277).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'RSON'

    #SHALL contain exactly one [1..1] Indication (templateId:2.16.840.1.113883.10.20.22.4.19) (CONF:15906).
    constraint 'entryRelationship.observation', cardinality: '1..1'

    #MAY contain zero or more [0..*] entryRelationship (CONF:8279) such that it
    constraint 'entryRelationship', cardinality: '0..*'

    #SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:8280).
    constraint 'entryRelationship.typeCode', cardinality: '1..1', value: 'COMP'

    #SHALL contain exactly one [1..1] Medication Activity (templateId:2.16.840.1.113883.10.20.22.4.16) (CONF:15907).
    constraint 'entryRelationship.substanceAdministration', cardinality: '1..1'
  end
end