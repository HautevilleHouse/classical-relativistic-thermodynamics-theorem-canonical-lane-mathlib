import Mathlib

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ThermodynamicSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ThermodynamicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse