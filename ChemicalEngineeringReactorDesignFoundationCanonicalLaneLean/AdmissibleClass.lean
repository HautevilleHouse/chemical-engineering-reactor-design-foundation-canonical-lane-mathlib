import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ChemicalEngineeringAdmittedObject where
  space : Type
  chemistryValid : Prop
  reactorModel : Prop
  conclusion : chemistryValid ∧ reactorModel

structure AdmissibleClass where
  object : ChemicalEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.chemistryValid ∧ A.object.reactorModel) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse