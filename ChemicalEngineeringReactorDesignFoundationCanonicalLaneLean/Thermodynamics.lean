import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLawValid : Prop
  secondLawValid : Prop
  gibbsFreeEnergyDefined : Prop
  enthalpyEntropyRelation : Prop
  phaseEquilibriumModel : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawValidClosed : T.firstLawValid
  secondLawValidClosed : T.secondLawValid
  gibbsFreeEnergyDefinedClosed : T.gibbsFreeEnergyDefined
  enthalpyEntropyRelationClosed : T.enthalpyEntropyRelation
  phaseEquilibriumModelClosed : T.phaseEquilibriumModel

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLawValid ∧ T.secondLawValid ∧ T.gibbsFreeEnergyDefined ∧ T.enthalpyEntropyRelation ∧ T.phaseEquilibriumModel

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawValidClosed
    (And.intro E.secondLawValidClosed
      (And.intro E.gibbsFreeEnergyDefinedClosed
        (And.intro E.enthalpyEntropyRelationClosed E.phaseEquilibriumModelClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse