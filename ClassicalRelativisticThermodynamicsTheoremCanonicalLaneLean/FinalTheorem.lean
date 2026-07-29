import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

def ConstrainedRelativisticThermodynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_relativistic_thermodynamics_endgame (A : AdmissibleClass) :
    ConstrainedRelativisticThermodynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse