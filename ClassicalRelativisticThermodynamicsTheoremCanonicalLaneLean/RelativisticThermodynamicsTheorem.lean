import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.StressEnergyTensor
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.ThermalEquilibrium
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.EntropyCurrent

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticThermodynamicsPackage where
  stressTensor : StressEnergyTensorPackage
  equilibrium : ThermalEquilibriumPackage
  entropy : EntropyCurrentPackage
  compatibility : Prop

structure RelativisticThermodynamicsEvidence (R : RelativisticThermodynamicsPackage) where
  stressTensorClosed : StressEnergyTensorClosed R.stressTensor
  equilibriumClosed : ThermalEquilibriumClosed R.equilibrium
  entropyClosed : EntropyCurrentClosed R.entropy
  compatibilityClosed : R.compatibility

def RelativisticThermodynamicsClosed (R : RelativisticThermodynamicsPackage) : Prop :=
  StressEnergyTensorClosed R.stressTensor ∧
  ThermalEquilibriumClosed R.equilibrium ∧
  EntropyCurrentClosed R.entropy ∧
  R.compatibility

theorem relativistic_thermodynamics_closed_from_evidence
    (R : RelativisticThermodynamicsPackage)
    (E : RelativisticThermodynamicsEvidence R) : RelativisticThermodynamicsClosed R := by
  exact And.intro E.stressTensorClosed
    (And.intro E.equilibriumClosed
      (And.intro E.entropyClosed E.compatibilityClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse