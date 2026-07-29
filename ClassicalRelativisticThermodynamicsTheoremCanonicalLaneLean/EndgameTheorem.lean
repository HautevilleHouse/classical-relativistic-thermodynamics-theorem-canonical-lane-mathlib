import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.RiemannianSpacetime
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.EinsteinFieldEquation
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.ThermodynamicEntropy
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.EquilibriumState

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticThermodynamicsFoundation where
  spacetime : RiemannianSpacetimePackage
  spacetimeEvidence : RiemannianSpacetimeEvidence spacetime
  fieldEq : EinsteinFieldEquationPackage spacetime
  fieldEqEvidence : EinsteinFieldEquationEvidence fieldEq
  entropy : ThermodynamicEntropyPackage fieldEq
  entropyEvidence : ThermodynamicEntropyEvidence entropy
  equilibrium : EquilibriumStatePackage entropy
  equilibriumEvidence : EquilibriumStateEvidence equilibrium

def RelativisticThermodynamicsFoundationClosed (A : RelativisticThermodynamicsFoundation) : Prop :=
  RiemannianSpacetimeClosed A.spacetime ∧
  EinsteinFieldEquationClosed A.fieldEq ∧
  ThermodynamicEntropyClosed A.entropy ∧
  EquilibriumStateClosed A.equilibrium

theorem relativistic_thermodynamics_foundation_closed_from_evidence
    (A : RelativisticThermodynamicsFoundation) :
    RelativisticThermodynamicsFoundationClosed A := by
  exact And.intro (riemannian_spacetime_closed_from_evidence A.spacetime A.spacetimeEvidence)
    (And.intro (einstein_field_equation_closed_from_evidence A.fieldEq A.fieldEqEvidence)
      (And.intro (thermodynamic_entropy_closed_from_evidence A.entropy A.entropyEvidence)
        (equilibrium_state_closed_from_evidence A.equilibrium A.equilibriumEvidence)))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse