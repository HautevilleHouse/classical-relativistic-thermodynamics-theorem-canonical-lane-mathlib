import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure StressEnergyTensorPackage where
  energyDensity : ℝ
  pressure : ℝ
  fourVelocity : ℝ × ℝ × ℝ × ℝ
  tensorComponents : Prop
  conservationLaw : Prop

structure StressEnergyTensorEvidence (S : StressEnergyTensorPackage) where
  tensorComponentsClosed : S.tensorComponents
  conservationLawClosed : S.conservationLaw

def StressEnergyTensorClosed (S : StressEnergyTensorPackage) : Prop :=
  S.tensorComponents ∧ S.conservationLaw

theorem stress_energy_tensor_closed_from_evidence (S : StressEnergyTensorPackage)
    (E : StressEnergyTensorEvidence S) : StressEnergyTensorClosed S := by
  exact And.intro E.tensorComponentsClosed E.conservationLawClosed

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse