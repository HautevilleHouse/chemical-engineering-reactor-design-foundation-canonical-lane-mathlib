import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactorModel : Prop
  continuousStirredTankModel : Prop
  plugFlowReactorModel : Prop
  energyBalanceValid : Prop
  designEquationValid : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  batchReactorModelClosed : R.batchReactorModel
  continuousStirredTankModelClosed : R.continuousStirredTankModel
  plugFlowReactorModelClosed : R.plugFlowReactorModel
  energyBalanceValidClosed : R.energyBalanceValid
  designEquationValidClosed : R.designEquationValid

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.batchReactorModel ∧ R.continuousStirredTankModel ∧ R.plugFlowReactorModel ∧ R.energyBalanceValid ∧ R.designEquationValid

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.batchReactorModelClosed
    (And.intro E.continuousStirredTankModelClosed
      (And.intro E.plugFlowReactorModelClosed
        (And.intro E.energyBalanceValidClosed E.designEquationValidClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse