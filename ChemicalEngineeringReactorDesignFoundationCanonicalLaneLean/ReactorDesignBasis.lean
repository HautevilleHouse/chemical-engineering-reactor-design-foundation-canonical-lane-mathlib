import ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean.ThermodynamicEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactorDesignPackage {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} where
  designEquations : Prop
  operatingConditions : Prop
  catalystSelection : Prop
  scaleUpCriterion : Prop

structure ReactorDesignEvidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} (D : ReactorDesignPackage R M T) where
  designEquationsClosed : D.designEquations
  operatingConditionsClosed : D.operatingConditions
  catalystSelectionClosed : D.catalystSelection
  scaleUpCriterionClosed : D.scaleUpCriterion

def ReactorDesignClosed {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} (D : ReactorDesignPackage R M T) : Prop :=
  D.designEquations ∧ D.operatingConditions ∧ D.catalystSelection ∧ D.scaleUpCriterion

theorem reactor_design_closed_from_evidence {R : ReactorKineticsPackage} {M : MolecularOrbitalPackage R} {T : ThermodynamicEquilibriumPackage R M} (D : ReactorDesignPackage R M T) (E : ReactorDesignEvidence D) :
    ReactorDesignClosed D := by
  exact And.intro E.designEquationsClosed (And.intro E.operatingConditionsClosed (And.intro E.catalystSelectionClosed E.scaleUpCriterionClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
