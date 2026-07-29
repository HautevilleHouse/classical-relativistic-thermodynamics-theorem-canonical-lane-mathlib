import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure EquilibriumStructurePackage where
  localThermalEquilibrium : Prop
  equationOfState : Type
  chemicalPotential : Type
  thermodynamicPotentials : Type
  equilibriumDistribution : Prop
  zeroEntropyProduction : Prop

structure EquilibriumStructureEvidence (E : EquilibriumStructurePackage) where
  localThermalEquilibriumClosed : E.localThermalEquilibrium
  equilibriumDistributionClosed : E.equilibriumDistribution
  zeroEntropyProductionClosed : E.zeroEntropyProduction

def EquilibriumStructureClosed (E : EquilibriumStructurePackage) : Prop :=
  E.localThermalEquilibrium ∧ E.equilibriumDistribution ∧ E.zeroEntropyProduction

theorem equilibrium_structure_closed_from_evidence (E : EquilibriumStructurePackage) (Ev : EquilibriumStructureEvidence E) : EquilibriumStructureClosed E := by
  exact And.intro Ev.localThermalEquilibriumClosed (And.intro Ev.equilibriumDistributionClosed Ev.zeroEntropyProductionClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse