import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure GravitationalWavePackage {E : EinsteinFieldEquationPackage} where
  perturbationMetric : Prop
  waveEquationDerived : Prop
  polarizationStates : Prop
  energyFluxDefined : Prop

structure GravitationalWaveEvidence {E : EinsteinFieldEquationPackage}
    (G : GravitationalWavePackage E) where
  perturbationMetricClosed : G.perturbationMetric
  waveEquationDerivedClosed : G.waveEquationDerived
  energyFluxDefinedClosed : G.energyFluxDefined

def GravitationalWaveClosed {E : EinsteinFieldEquationPackage}
    (G : GravitationalWavePackage E) : Prop :=
  G.perturbationMetric ∧ G.waveEquationDerived ∧ G.energyFluxDefined

theorem gravitational_wave_closed_from_evidence
    {E : EinsteinFieldEquationPackage} (G : GravitationalWavePackage E)
    (Ev : GravitationalWaveEvidence G) : GravitationalWaveClosed G := by
  exact And.intro Ev.perturbationMetricClosed
    (And.intro Ev.waveEquationDerivedClosed Ev.energyFluxDefinedClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse