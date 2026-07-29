import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure FrameDependentVariablesPackage where
  localRestFrame : Type
  eckartFrame : Type
  landauLifshitzFrame : Type
  stressComponentsTransformed : Prop
  energyFluxTransformed : Prop
  entropyDensityTransformed : Prop

structure FrameDependentVariablesEvidence (F : FrameDependentVariablesPackage) where
  stressComponentsTransformedClosed : F.stressComponentsTransformed
  energyFluxTransformedClosed : F.energyFluxTransformed
  entropyDensityTransformedClosed : F.entropyDensityTransformed

def FrameDependentVariablesClosed (F : FrameDependentVariablesPackage) : Prop :=
  F.stressComponentsTransformed ∧ F.energyFluxTransformed ∧ F.entropyDensityTransformed

theorem frame_dependent_variables_closed_from_evidence (F : FrameDependentVariablesPackage) (Ev : FrameDependentVariablesEvidence F) : FrameDependentVariablesClosed F := by
  exact And.intro Ev.stressComponentsTransformedClosed (And.intro Ev.energyFluxTransformedClosed Ev.entropyDensityTransformedClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse