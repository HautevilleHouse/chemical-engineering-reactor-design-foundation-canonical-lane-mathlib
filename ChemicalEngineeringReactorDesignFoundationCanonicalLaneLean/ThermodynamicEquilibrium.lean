import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.MolecularOrbitalTheory

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ThermodynamicEquilibriumPackage {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} where
  equilibriumConstant : Float
  deltaG : Float
  temperature : Float
  spontaneity : Prop

structure ThermodynamicEquilibriumEvidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} (T : ThermodynamicEquilibriumPackage R M) where
  equilibriumConstantPositive : T.equilibriumConstant > 0.0
  deltaGNegative : T.deltaG < 0.0
  temperaturePositive : T.temperature > 0.0
  spontaneityClosed : T.spontaneity

def ThermodynamicEquilibriumClosed {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} (T : ThermodynamicEquilibriumPackage R M) : Prop :=
  T.equilibriumConstant > 0.0 ∧ T.deltaG < 0.0 ∧ T.temperature > 0.0 ∧ T.spontaneity

theorem thermodynamic_equilibrium_closed_from_evidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} (T : ThermodynamicEquilibriumPackage R M) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.equilibriumConstantPositive (And.intro E.deltaGNegative (And.intro E.temperaturePositive E.spontaneityClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
