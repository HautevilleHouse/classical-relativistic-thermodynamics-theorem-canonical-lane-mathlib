import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure CausalityStabilityPackage where
  characteristicSpeeds : Type
  hyperbolicityCondition : Prop
  subluminalPropagation : Prop
  linearStability : Prop
  boundedEntropyProduction : Prop

structure CausalityStabilityEvidence (C : CausalityStabilityPackage) where
  hyperbolicityConditionClosed : C.hyperbolicityCondition
  subluminalPropagationClosed : C.subluminalPropagation
  linearStabilityClosed : C.linearStability
  boundedEntropyProductionClosed : C.boundedEntropyProduction

def CausalityStabilityClosed (C : CausalityStabilityPackage) : Prop :=
  C.hyperbolicityCondition ∧ C.subluminalPropagation ∧ C.linearStability ∧ C.boundedEntropyProduction

theorem causality_stability_closed_from_evidence (C : CausalityStabilityPackage) (Ev : CausalityStabilityEvidence C) : CausalityStabilityClosed C := by
  exact And.intro Ev.hyperbolicityConditionClosed (And.intro Ev.subluminalPropagationClosed (And.intro Ev.linearStabilityClosed Ev.boundedEntropyProductionClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse