import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.ThermodynamicEntropy

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure EquilibriumStatePackage {G : RiemannianSpacetimePackage}
    {E : EinsteinFieldEquationPackage G}
    (S : ThermodynamicEntropyPackage E) where
  equilibriumCondition : Prop
  localThermalEquilibrium : Prop
  equationOfState : Prop

structure EquilibriumStateEvidence {G : RiemannianSpacetimePackage}
    {E : EinsteinFieldEquationPackage G} {S : ThermodynamicEntropyPackage E}
    (Eq : EquilibriumStatePackage S) where
  equilibriumConditionClosed : Eq.equilibriumCondition
  localThermalEquilibriumClosed : Eq.localThermalEquilibrium
  equationOfStateClosed : Eq.equationOfState

def EquilibriumStateClosed {G : RiemannianSpacetimePackage}
    {E : EinsteinFieldEquationPackage G} {S : ThermodynamicEntropyPackage E}
    (Eq : EquilibriumStatePackage S) : Prop :=
  Eq.equilibriumCondition ∧ Eq.localThermalEquilibrium ∧ Eq.equationOfState

theorem equilibrium_state_closed_from_evidence
    {G : RiemannianSpacetimePackage} {E : EinsteinFieldEquationPackage G}
    {S : ThermodynamicEntropyPackage E}
    (Eq : EquilibriumStatePackage S) (Ev : EquilibriumStateEvidence Eq) :
    EquilibriumStateClosed Eq := by
  exact And.intro Ev.equilibriumConditionClosed
    (And.intro Ev.localThermalEquilibriumClosed Ev.equationOfStateClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse