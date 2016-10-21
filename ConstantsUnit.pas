unit ConstantsUnit;

interface

type
  TEntityType = (entPerson, entAdres, entDoc, entServiceType,
    entSettlement, entDistrict, entState, entCountry);
  TSelFormMode = (smSelect, smInsert, smSelectOnly, smInsertOnly, smEdit);

  TSelReturn = record
    ResultEntityID: Integer;
    ResultIdS: array of Integer;
    ResultEntityGroupID: Integer;
    ResultEntityLinkID: Integer;
  end;

const
  PERSON_ENTITY_TYPE: Integer=1;
  ADRES_ENTITY_TYPE: Integer=2;
  DOC_ENTITY_TYPE: Integer=3;

implementation

end.
