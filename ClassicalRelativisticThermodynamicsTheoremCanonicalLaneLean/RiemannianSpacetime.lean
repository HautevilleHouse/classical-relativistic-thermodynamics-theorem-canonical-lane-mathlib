import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.PseudoRiemannian.Basic

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure RiemannianSpacetimePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  lorentzMetric : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  smoothFourManifold : Prop
  metricSmooth : Prop
  ricciLawful : Prop
  scalarCurvatureTraced : Prop

structure RiemannianSpacetimeEvidence (G : RiemannianSpacetimePackage) where
  smoothFourManifoldClosed : G.smoothFourManifold
  metricSmoothClosed : G.metricSmooth
  ricciLawfulClosed : G.ricciLawful
  scalarCurvatureTracedClosed : G.scalarCurvatureTraced

def RiemannianSpacetimeClosed (G : RiemannianSpacetimePackage) : Prop :=
  G.smoothFourManifold ∧ G.metricSmooth ∧ G.ricciLawful ∧ G.scalarCurvatureTraced

theorem riemannian_spacetime_closed_from_evidence
    (G : RiemannianSpacetimePackage) (E : RiemannianSpacetimeEvidence G) :
    RiemannianSpacetimeClosed G := by
  exact And.intro E.smoothFourManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.ricciLawfulClosed E.scalarCurvatureTracedClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse