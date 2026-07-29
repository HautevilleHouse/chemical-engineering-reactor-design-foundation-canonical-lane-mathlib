import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure TransportPhenomenaPackage where
  massTransfer : Prop
  heatTransfer : Prop
  momentumTransfer : Prop
  boundaryLayerTheory : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  massTransferClosed : T.massTransfer
  heatTransferClosed : T.heatTransfer
  momentumTransferClosed : T.momentumTransfer
  boundaryLayerTheoryClosed : T.boundaryLayerTheory

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.massTransfer ∧ T.heatTransfer ∧ T.momentumTransfer ∧ T.boundaryLayerTheory

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.massTransferClosed
    (And.intro E.heatTransferClosed
      (And.intro E.momentumTransferClosed E.boundaryLayerTheoryClosed))

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse