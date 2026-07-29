import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactorKineticsPackage where
  rateLawType : Type
  reactionOrder : Nat
  activationEnergy : Float
  temperatureDependence : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  rateLawTypeDefined : R.rateLawType = Unit
  reactionOrderValid : R.reactionOrder > 0
  activationEnergyFinite : R.activationEnergy > 0.0
  temperatureDependenceClosed : R.temperatureDependence

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.rateLawType = Unit ∧ R.reactionOrder > 0 ∧ R.activationEnergy > 0.0 ∧ R.temperatureDependence

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) :
    ReactorKineticsClosed R := by
  exact And.intro E.rateLawTypeDefined (And.intro E.reactionOrderValid (And.intro E.activationEnergyFinite E.temperatureDependenceClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
