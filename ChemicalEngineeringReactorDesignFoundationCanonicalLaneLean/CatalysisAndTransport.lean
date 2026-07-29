import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure CatalysisTransportPackage where
  catalystActivity : Prop
  langmuirHinshelwood : Prop
  massTransfer : Prop
  heatTransfer : Prop
  poreDiffusion : Prop
  effectivenessFactor : Prop

structure CatalysisTransportEvidence (C : CatalysisTransportPackage) where
  catalystActivityClosed : C.catalystActivity
  langmuirHinshelwoodClosed : C.langmuirHinshelwood
  massTransferClosed : C.massTransfer
  heatTransferClosed : C.heatTransfer
  poreDiffusionClosed : C.poreDiffusion
  effectivenessFactorClosed : C.effectivenessFactor

def CatalysisTransportClosed (C : CatalysisTransportPackage) : Prop :=
  C.catalystActivity ∧ C.langmuirHinshelwood ∧ C.massTransfer ∧ C.heatTransfer ∧ C.poreDiffusion ∧ C.effectivenessFactor

theorem catalysis_transport_closed_from_evidence (C : CatalysisTransportPackage) (E : CatalysisTransportEvidence C) :
    CatalysisTransportClosed C := by
  exact And.intro E.catalystActivityClosed
    (And.intro E.langmuirHinshelwoodClosed
      (And.intro E.massTransferClosed
        (And.intro E.heatTransferClosed
          (And.intro E.poreDiffusionClosed E.effectivenessFactorClosed))))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse