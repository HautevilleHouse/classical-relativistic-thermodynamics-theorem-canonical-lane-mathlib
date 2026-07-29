import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure ThermalEquilibriumPackage where
  temperature : ℝ
  chemicalPotential : ℝ
  localThermalization : Prop
  equilibriumCondition : Prop

structure ThermalEquilibriumEvidence (T : ThermalEquilibriumPackage) where
  localThermalizationClosed : T.localThermalization
  equilibriumConditionClosed : T.equilibriumCondition

def ThermalEquilibriumClosed (T : ThermalEquilibriumPackage) : Prop :=
  T.localThermalization ∧ T.equilibriumCondition

theorem thermal_equilibrium_closed_from_evidence (T : ThermalEquilibriumPackage)
    (E : ThermalEquilibriumEvidence T) : ThermalEquilibriumClosed T := by
  exact And.intro E.localThermalizationClosed E.equilibriumConditionClosed

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse