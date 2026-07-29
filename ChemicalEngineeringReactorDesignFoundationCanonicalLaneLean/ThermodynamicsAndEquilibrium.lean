import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  gibbsFreeEnergy : Prop
  equilibriumCondition : Prop
  vanHoffEquation : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConditionClosed : T.equilibriumCondition
  vanHoffEquationClosed : T.vanHoffEquation

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.gibbsFreeEnergy ∧ T.equilibriumCondition ∧ T.vanHoffEquation

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.equilibriumConditionClosed E.vanHoffEquationClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse