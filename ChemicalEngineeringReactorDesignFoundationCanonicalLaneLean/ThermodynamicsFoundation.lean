import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ThermodynamicsFoundationPackage where
  enthalpyChange : Prop
  entropyChange : Prop
  GibbsFreeEnergy : Prop
  heatCapacity : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsFoundationEvidence (T : ThermodynamicsFoundationPackage) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  GibbsFreeEnergyClosed : T.GibbsFreeEnergy
  heatCapacityClosed : T.heatCapacity
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsFoundationClosed (T : ThermodynamicsFoundationPackage) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.GibbsFreeEnergy ∧ T.heatCapacity ∧ T.phaseEquilibrium

theorem thermodynamics_foundation_closed_from_evidence (T : ThermodynamicsFoundationPackage) (E : ThermodynamicsFoundationEvidence T) :
    ThermodynamicsFoundationClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.GibbsFreeEnergyClosed
        (And.intro E.heatCapacityClosed E.phaseEquilibriumClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse