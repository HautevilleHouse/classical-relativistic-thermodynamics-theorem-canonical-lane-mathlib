import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure ThermodynamicSystem where
  spacetime : Type u
  metric : Type v
  stressEnergy : Type w
  entropyCurrent : Type x
  thermodynamicLawsSatisfied : Prop
  conclusion : thermodynamicLawsSatisfied

def ThermodynamicWitnessClosed (O : ThermodynamicSystem) : Prop :=
  O.thermodynamicLawsSatisfied

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse