import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticHeatConductionPackage where
  heatFluxVector : Type
  thermalConductivity : Type
  relativisticFourierLaw : Prop
  maximalCausality : Prop
  stabilityCondition : Prop

structure RelativisticHeatConductionEvidence (H : RelativisticHeatConductionPackage) where
  relativisticFourierLawClosed : H.relativisticFourierLaw
  maximalCausalityClosed : H.maximalCausality
  stabilityConditionClosed : H.stabilityCondition

def RelativisticHeatConductionClosed (H : RelativisticHeatConductionPackage) : Prop :=
  H.relativisticFourierLaw ∧ H.maximalCausality ∧ H.stabilityCondition

theorem relativistic_heat_conduction_closed_from_evidence (H : RelativisticHeatConductionPackage) (Ev : RelativisticHeatConductionEvidence H) : RelativisticHeatConductionClosed H := by
  exact And.intro Ev.relativisticFourierLawClosed (And.intro Ev.maximalCausalityClosed Ev.stabilityConditionClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse