import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantDefined : Prop
  leChatelierPrincipleValid : Prop
  reactionQuotientModel : Prop
  temperatureDependenceViaVanHoff : Prop
  pressureDependenceModel : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantDefinedClosed : C.equilibriumConstantDefined
  leChatelierPrincipleValidClosed : C.leChatelierPrincipleValid
  reactionQuotientModelClosed : C.reactionQuotientModel
  temperatureDependenceViaVanHoffClosed : C.temperatureDependenceViaVanHoff
  pressureDependenceModelClosed : C.pressureDependenceModel

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantDefined ∧ C.leChatelierPrincipleValid ∧ C.reactionQuotientModel ∧ C.temperatureDependenceViaVanHoff ∧ C.pressureDependenceModel

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantDefinedClosed
    (And.intro E.leChatelierPrincipleValidClosed
      (And.intro E.reactionQuotientModelClosed
        (And.intro E.temperatureDependenceViaVanHoffClosed E.pressureDependenceModelClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse