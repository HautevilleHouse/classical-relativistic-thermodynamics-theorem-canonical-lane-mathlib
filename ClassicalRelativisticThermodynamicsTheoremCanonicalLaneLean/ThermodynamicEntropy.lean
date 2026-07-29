import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean.EinsteinFieldEquation

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure ThermodynamicEntropyPackage {G : RiemannianSpacetimePackage}
    (E : EinsteinFieldEquationPackage G) where
  entropyCurrent : Type u
  entropyProduction : Prop
  secondLawHolds : Prop
  entropyBoundedBelow : Prop

structure ThermodynamicEntropyEvidence {G : RiemannianSpacetimePackage}
    {E : EinsteinFieldEquationPackage G}
    (S : ThermodynamicEntropyPackage E) where
  entropyProductionClosed : S.entropyProduction
  secondLawHoldsClosed : S.secondLawHolds
  entropyBoundedBelowClosed : S.entropyBoundedBelow

def ThermodynamicEntropyClosed {G : RiemannianSpacetimePackage}
    {E : EinsteinFieldEquationPackage G}
    (S : ThermodynamicEntropyPackage E) : Prop :=
  S.entropyProduction ∧ S.secondLawHolds ∧ S.entropyBoundedBelow

theorem thermodynamic_entropy_closed_from_evidence
    {G : RiemannianSpacetimePackage} {E : EinsteinFieldEquationPackage G}
    (S : ThermodynamicEntropyPackage E) (Ev : ThermodynamicEntropyEvidence S) :
    ThermodynamicEntropyClosed S := by
  exact And.intro Ev.entropyProductionClosed
    (And.intro Ev.secondLawHoldsClosed Ev.entropyBoundedBelowClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse