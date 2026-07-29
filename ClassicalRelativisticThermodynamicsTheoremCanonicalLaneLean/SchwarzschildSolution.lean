import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure SchwarzschildSolutionPackage {E : EinsteinFieldEquationPackage} where
  massParameter : ℝ
  eventHorizonRadius : ℝ
  metricInSchwarzschildCoordinates : Prop
  singularityAtOrigin : Prop
  asymptoticallyFlat : Prop

structure SchwarzschildSolutionEvidence {E : EinsteinFieldEquationPackage}
    (S : SchwarzschildSolutionPackage E) where
  metricInSchwarzschildCoordinatesClosed : S.metricInSchwarzschildCoordinates
  asymptoticallyFlatClosed : S.asymptoticallyFlat

def SchwarzschildSolutionClosed {E : EinsteinFieldEquationPackage}
    (S : SchwarzschildSolutionPackage E) : Prop :=
  S.metricInSchwarzschildCoordinates ∧ S.asymptoticallyFlat

theorem schwarzschild_solution_closed_from_evidence
    {E : EinsteinFieldEquationPackage} (S : SchwarzschildSolutionPackage E)
    (Ev : SchwarzschildSolutionEvidence S) : SchwarzschildSolutionClosed S := by
  exact And.intro Ev.metricInSchwarzschildCoordinatesClosed Ev.asymptoticallyFlatClosed

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse