import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactionKineticsPackage (A : AdmissibleClass) where
  rateExpression : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  reactionOrder : Prop
  equilibriumConstant : Prop
  rateExpressionClosed : rateExpression
  activationEnergyClosed : activationEnergy
  preExponentialFactorClosed : preExponentialFactor
  reactionOrderClosed : reactionOrder
  equilibriumConstantClosed : equilibriumConstant

structure ReactionKineticsEvidence {A : AdmissibleClass} (P : ReactionKineticsPackage A) where
  rateExpressionClosed : P.rateExpression
  activationEnergyClosed : P.activationEnergy
  preExponentialFactorClosed : P.preExponentialFactor
  reactionOrderClosed : P.reactionOrder
  equilibriumConstantClosed : P.equilibriumConstant

def ReactionKineticsClosed {A : AdmissibleClass} (P : ReactionKineticsPackage A) : Prop :=
  P.rateExpression ∧ P.activationEnergy ∧ P.preExponentialFactor ∧ P.reactionOrder ∧ P.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence {A : AdmissibleClass} (P : ReactionKineticsPackage A) (E : ReactionKineticsEvidence P) :
    ReactionKineticsClosed P := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.preExponentialFactorClosed
        (And.intro E.reactionOrderClosed E.equilibriumConstantClosed)))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
