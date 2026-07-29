import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure EinsteinFieldEquationPackage where
  spacetime : Type u
  topology : TopologicalSpace spacetime
  smoothStructure : Prop
  metric : Type v
  stressEnergyTensor : Type w
  cosmologicalConstant : ℝ
  einsteinTensorDefined : Prop
  fieldEquationsHeld : Prop

structure EinsteinFieldEquationEvidence (E : EinsteinFieldEquationPackage) where
  smoothStructureClosed : E.smoothStructure
  metricSmoothClosed : Prop
  stressEnergyTensorDefinedClosed : Prop
  einsteinTensorDefinedClosed : E.einsteinTensorDefined
  fieldEquationsHeldClosed : E.fieldEquationsHeld

def EinsteinFieldEquationClosed (E : EinsteinFieldEquationPackage) : Prop :=
  E.smoothStructure ∧ E.einsteinTensorDefined ∧ E.fieldEquationsHeld

theorem einstein_field_equation_closed_from_evidence
    (E : EinsteinFieldEquationPackage) (Ev : EinsteinFieldEquationEvidence E) :
    EinsteinFieldEquationClosed E := by
  exact And.intro Ev.smoothStructureClosed
    (And.intro Ev.einsteinTensorDefinedClosed Ev.fieldEquationsHeldClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse