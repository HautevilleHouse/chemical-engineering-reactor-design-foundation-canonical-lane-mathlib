import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.ReactionKineticsPackage
import HautevilleHouse.ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.ThermodynamicEquilibriumPackage

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

def ConstrainedReactorDesignClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reactor_design_endgame (A : AdmissibleClass) :
    ConstrainedReactorDesignClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
