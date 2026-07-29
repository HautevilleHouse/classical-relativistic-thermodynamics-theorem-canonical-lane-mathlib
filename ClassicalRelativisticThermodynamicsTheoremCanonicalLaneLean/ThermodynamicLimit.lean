import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure ThermodynamicLimitPackage {K : RelativisticKineticTheoryPackage} where
  particleNumberConservation : Prop
  energyConservation : Prop
  entropyMonotonicity : Prop
  equilibriumCharacterization : Prop
  thermodynamicLimitReached : Prop

structure ThermodynamicLimitEvidence {K : RelativisticKineticTheoryPackage}
    (T : ThermodynamicLimitPackage K) where
  particleNumberConservationClosed : T.particleNumberConservation
  energyConservationClosed : T.energyConservation
  entropyMonotonicityClosed : T.entropyMonotonicity
  thermodynamicLimitReachedClosed : T.thermodynamicLimitReached

def ThermodynamicLimitClosed {K : RelativisticKineticTheoryPackage}
    (T : ThermodynamicLimitPackage K) : Prop :=
  T.particleNumberConservation ∧ T.energyConservation ∧ T.entropyMonotonicity ∧ T.thermodynamicLimitReached

theorem thermodynamic_limit_closed_from_evidence
    {K : RelativisticKineticTheoryPackage} (T : ThermodynamicLimitPackage K)
    (Ev : ThermodynamicLimitEvidence T) : ThermodynamicLimitClosed T := by
  exact And.intro Ev.particleNumberConservationClosed
    (And.intro Ev.energyConservationClosed
      (And.intro Ev.entropyMonotonicityClosed Ev.thermodynamicLimitReachedClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse