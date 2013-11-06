module Ccd
  class USRealmPersonNamePNUSFIELDED < ::Cda::PN
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] name (CONF:9368).
    constraint 'name', cardinality: '1..1'

    #The content of name SHALL be either a conformant Patient Name (PTN.US.FIELDED), or a string
    constraint 'name'

    #The string SHALL NOT contain name parts
    constraint 'name'
  end
end