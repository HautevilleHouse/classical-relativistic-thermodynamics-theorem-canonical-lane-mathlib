import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RelativisticParticleDistribution where
  phaseSpace : Type u
  spacetime : Type v
  momentumSpace : Type w
  distributionFunction : momentumSpace -> spacetime -> ℝ
  equilibriumCondition : Prop
  relativisticBoltzmannCollision : Prop
  particleNumberFlux : Prop
  energyMomentumTensorFromDistribution : Prop
  equilibriumConditionClosed : equilibriumCondition
  relativisticBoltzmannCollisionClosed : relativisticBoltzmannCollision
  particleNumberFluxClosed : particleNumberFlux
  energyMomentumTensorFromDistributionClosed : energyMomentumTensorFromDistribution

def RelativisticParticleDistributionClosed (D : RelativisticParticleDistribution) : Prop :=
  D.equilibriumCondition ∧ D.relativisticBoltzmannCollision ∧
  D.particleNumberFlux ∧ D.energyMomentumTensorFromDistribution

theorem relativistic_particle_distribution_closed_from_evidence
    (D : RelativisticParticleDistribution) : RelativisticParticleDistributionClosed D := by
  exact And.intro D.equilibriumConditionClosed
    (And.intro D.relativisticBoltzmannCollisionClosed
      (And.intro D.particleNumberFluxClosed D.energyMomentumTensorFromDistributionClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse