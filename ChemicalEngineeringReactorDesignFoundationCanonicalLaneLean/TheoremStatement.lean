import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean

structure ReactorDesignObject where
  reactor : Type
  reactionKinetics : Prop
  thermodynamics : Prop
  chemicalEquilibrium : Prop
  molecularOrbitalTheory : Prop
  conclusion : Prop

def ReactorDesignWitnessClosed (O : ReactorDesignObject) : Prop :=
  O.conclusion

end ChemicalEngineeringReactorDesignFoundationCanonicalLaneLean
end HautevilleHouse
