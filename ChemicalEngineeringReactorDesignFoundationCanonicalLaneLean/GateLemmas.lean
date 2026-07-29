import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse