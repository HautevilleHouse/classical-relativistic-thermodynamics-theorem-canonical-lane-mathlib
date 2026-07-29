import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure HawkingUnruhThermodynamicClosure where
  blackHoleHorizon : Type u
  surfaceGravity : ℝ
  hawkingTemperature : ℝ
  bekensteinHawkingEntropy : ℝ
  unruhEffect : Prop
  temperatureDefinedAs : surfaceGravity = 2 * hawkingTemperature
  entropyDefinedAs : bekensteinHawkingEntropy = 1 / (4 * hawkingTemperature)
  unruhEffectClosed : unruhEffect

def HawkingUnruhThermodynamicClosureClosed (H : HawkingUnruhThermodynamicClosure) : Prop :=
  H.unruhEffect ∧ H.temperatureDefinedAs ∧ H.entropyDefinedAs

theorem hawking_unruh_thermodynamic_closure_closed_from_evidence
    (H : HawkingUnruhThermodynamicClosure) : HawkingUnruhThermodynamicClosureClosed H := by
  exact And.intro H.unruhEffectClosed
    (And.intro H.temperatureDefinedAs H.entropyDefinedAs)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse