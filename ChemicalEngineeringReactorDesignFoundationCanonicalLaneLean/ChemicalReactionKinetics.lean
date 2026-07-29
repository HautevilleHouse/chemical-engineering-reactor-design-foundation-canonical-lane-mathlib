import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : Prop
  concentrationProfile : Prop
  temperatureDependence : Prop
  catalystEffect : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  reactionRateConstantClosed : R.reactionRateConstant
  concentrationProfileClosed : R.concentrationProfile
  temperatureDependenceClosed : R.temperatureDependence
  catalystEffectClosed : R.catalystEffect

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.reactionRateConstant ∧ R.concentrationProfile ∧ R.temperatureDependence ∧ R.catalystEffect

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.reactionRateConstantClosed
    (And.intro E.concentrationProfileClosed
      (And.intro E.temperatureDependenceClosed E.catalystEffectClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse