module Ccd
  class ResultsSectionEntriesRequired < ::Cda::Section
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] templateId (CONF:7108) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3.1" (CONF:9137).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.2.3.1'

    #SHALL contain exactly one [1..1] code (CONF:15433).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:15434).
    constraint 'code.code', cardinality: '1..1', value: '30954-2'

    #SHALL contain exactly one [1..1] title (CONF:8892).
    constraint 'title', cardinality: '1..1'

    #SHALL contain exactly one [1..1] text (CONF:7111).
    constraint 'text', cardinality: '1..1'

    #SHALL contain at least one [1..*] entry (CONF:7112) such that it
    constraint 'entry', cardinality: '1..*'

    #SHALL contain exactly one [1..1] Result Organizer (templateId:2.16.840.1.113883.10.20.22.4.1) (CONF:15516).
    constraint 'entry.organizer', cardinality: '1..1'
  end
end