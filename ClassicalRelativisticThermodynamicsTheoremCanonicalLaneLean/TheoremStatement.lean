import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticThermodynamicsObject where
  spacetimeManifold : Type
  topology : TopologicalSpace spacetimeManifold
  metric : Type
  stressEnergyTensor : Type
  entropyCurrent : Type
  localThermalEquilibrium : Prop
  einsteinFieldEquations : Prop
  secondLawOfThermodynamics : Prop
  conclusion : localThermalEquilibrium ∧ einsteinFieldEquations ∧ secondLawOfThermodynamics

def ThermodynamicsWitnessClosed (O : RelativisticThermodynamicsObject) : Prop :=
  O.localThermalEquilibrium ∧ O.einsteinFieldEquations ∧ O.secondLawOfThermodynamics

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse