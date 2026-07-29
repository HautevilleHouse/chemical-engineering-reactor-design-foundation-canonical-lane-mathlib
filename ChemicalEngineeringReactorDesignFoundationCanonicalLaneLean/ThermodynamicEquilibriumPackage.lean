import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ThermodynamicEquilibriumPackage (A : AdmissibleClass) where
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  equilibriumCondition : Prop
  temperatureDependence : Prop
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  enthalpyClosed : enthalpy
  entropyClosed : entropy
  equilibriumConditionClosed : equilibriumCondition
  temperatureDependenceClosed : temperatureDependence

structure ThermodynamicEquilibriumEvidence {A : AdmissibleClass} (T : ThermodynamicEquilibriumPackage A) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  equilibriumConditionClosed : T.equilibriumCondition
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicEquilibriumClosed {A : AdmissibleClass} (T : ThermodynamicEquilibriumPackage A) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.equilibriumCondition ∧ T.temperatureDependence

theorem thermodynamic_equilibrium_closed_from_evidence {A : AdmissibleClass} (T : ThermodynamicEquilibriumPackage A) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed
        (And.intro E.equilibriumConditionClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
