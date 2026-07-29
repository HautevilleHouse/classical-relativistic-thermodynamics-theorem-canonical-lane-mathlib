import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticKineticTheoryPackage where
  phaseSpace : Type u
  distributionFunction : Type v
  boltzmannEquation : Prop
  equilibriumDistribution : Prop
  entropyCurrent : Prop

structure RelativisticKineticTheoryEvidence (K : RelativisticKineticTheoryPackage) where
  boltzmannEquationClosed : K.boltzmannEquation
  equilibriumDistributionClosed : K.equilibriumDistribution
  entropyCurrentClosed : K.entropyCurrent

def RelativisticKineticTheoryClosed (K : RelativisticKineticTheoryPackage) : Prop :=
  K.boltzmannEquation ∧ K.equilibriumDistribution ∧ K.entropyCurrent

theorem relativistic_kinetic_theory_closed_from_evidence
    (K : RelativisticKineticTheoryPackage) (Ev : RelativisticKineticTheoryEvidence K) :
    RelativisticKineticTheoryClosed K := by
  exact And.intro Ev.boltzmannEquationClosed
    (And.intro Ev.equilibriumDistributionClosed Ev.entropyCurrentClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse