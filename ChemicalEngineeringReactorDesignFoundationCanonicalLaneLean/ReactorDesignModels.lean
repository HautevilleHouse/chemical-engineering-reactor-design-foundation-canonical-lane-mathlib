import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactor : Prop
  continuousStirredTank : Prop
  plugFlowReactor : Prop
  packedBedReactor : Prop
  designEquation : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  batchReactorClosed : R.batchReactor
  continuousStirredTankClosed : R.continuousStirredTank
  plugFlowReactorClosed : R.plugFlowReactor
  packedBedReactorClosed : R.packedBedReactor
  designEquationClosed : R.designEquation

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.batchReactor ∧ R.continuousStirredTank ∧ R.plugFlowReactor ∧ R.packedBedReactor ∧ R.designEquation

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.batchReactorClosed
    (And.intro E.continuousStirredTankClosed
      (And.intro E.plugFlowReactorClosed
        (And.intro E.packedBedReactorClosed E.designEquationClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse