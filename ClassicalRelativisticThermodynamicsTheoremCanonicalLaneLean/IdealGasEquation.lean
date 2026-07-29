import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure IdealGasEquationPackage where
  particleDensity : ℝ
  temperature : ℝ
  pressure : ℝ
  equationOfState : Prop
  relativisticCorrection : Prop

structure IdealGasEquationEvidence (P : IdealGasEquationPackage) where
  equationOfStateClosed : P.equationOfState
  relativisticCorrectionClosed : P.relativisticCorrection

def IdealGasEquationClosed (P : IdealGasEquationPackage) : Prop :=
  P.equationOfState ∧ P.relativisticCorrection

theorem ideal_gas_equation_closed_from_evidence (P : IdealGasEquationPackage)
    (E : IdealGasEquationEvidence P) : IdealGasEquationClosed P := by
  exact And.intro E.equationOfStateClosed E.relativisticCorrectionClosed

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse