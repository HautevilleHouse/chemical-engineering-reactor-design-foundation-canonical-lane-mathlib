import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.ReactorDesignBasis

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure CatalystMechanismPackage {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} {D : ReactorDesignPackage R M T} where
  activeSite : Type
  adsorptionStep : Prop
  surfaceReaction : Prop
  desorptionStep : Prop

structure CatalystMechanismEvidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} {D : ReactorDesignPackage R M T} (C : CatalystMechanismPackage R M T D) where
  activeSiteDefined : C.activeSite = Unit
  adsorptionStepClosed : C.adsorptionStep
  surfaceReactionClosed : C.surfaceReaction
  desorptionStepClosed : C.desorptionStep

def CatalystMechanismClosed {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} {D : ReactorDesignPackage R M T} (C : CatalystMechanismPackage R M T D) : Prop :=
  C.activeSite = Unit ∧ C.adsorptionStep ∧ C.surfaceReaction ∧ C.desorptionStep

theorem catalyst_mechanism_closed_from_evidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} {D : ReactorDesignPackage R M T} (C : CatalystMechanismPackage R M T D) (E : CatalystMechanismEvidence C) :
    CatalystMechanismClosed C := by
  exact And.intro E.activeSiteDefined (And.intro E.adsorptionStepClosed (And.intro E.surfaceReactionClosed E.desorptionStepClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
