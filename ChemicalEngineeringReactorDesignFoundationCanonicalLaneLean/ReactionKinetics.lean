import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  preExponentialFactor : Type w
  rateLawValid : Prop
  arrheniusRelationValid : Prop
  temperatureDependence : Prop
  concentrationDependence : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawValidClosed : K.rateLawValid
  arrheniusRelationValidClosed : K.arrheniusRelationValid
  temperatureDependenceClosed : K.temperatureDependence
  concentrationDependenceClosed : K.concentrationDependence

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLawValid ∧ K.arrheniusRelationValid ∧ K.temperatureDependence ∧ K.concentrationDependence

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.rateLawValidClosed
    (And.intro E.arrheniusRelationValidClosed
      (And.intro E.temperatureDependenceClosed E.concentrationDependenceClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse