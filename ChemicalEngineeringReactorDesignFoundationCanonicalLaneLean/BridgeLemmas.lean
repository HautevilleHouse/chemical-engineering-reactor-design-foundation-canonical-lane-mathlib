import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.chemistryValid ∧ A.object.reactorModel

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse