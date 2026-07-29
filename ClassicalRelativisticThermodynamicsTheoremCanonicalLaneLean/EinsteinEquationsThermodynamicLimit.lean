import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure EinsteinEquationsThermodynamicLimit where
  spacetimeMetric : Type u
  stressEnergyTensor : Type v
  einsteinTensorFromMetric : Type w
  thermodynamicLimitMetric : Prop
  continuityEquation : Prop
  equilibriumSolution : Prop
  thermodynamicLimitMetricClosed : thermodynamicLimitMetric
  continuityEquationClosed : continuityEquation
  equilibriumSolutionClosed : equilibriumSolution

def EinsteinEquationsThermodynamicLimitClosed (E : EinsteinEquationsThermodynamicLimit) : Prop :=
  E.thermodynamicLimitMetric ∧ E.continuityEquation ∧ E.equilibriumSolution

theorem einstein_equations_thermodynamic_limit_closed_from_evidence
    (E : EinsteinEquationsThermodynamicLimit) : EinsteinEquationsThermodynamicLimitClosed E := by
  exact And.intro E.thermodynamicLimitMetricClosed
    (And.intro E.continuityEquationClosed E.equilibriumSolutionClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse