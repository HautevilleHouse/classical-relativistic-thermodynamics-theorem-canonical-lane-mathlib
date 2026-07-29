import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure EntropyCurrentPackage where
  entropyCurrentDensity : Type
  entropyFlux : Type
  entropyProductionRate : Type
  secondLawHolds : Prop
  carnotClausiusConstraint : Prop
  temperatureFieldDefined : Prop

structure EntropyCurrentEvidence (E : EntropyCurrentPackage) where
  secondLawHoldsClosed : E.secondLawHolds
  carnotClausiusConstraintClosed : E.carnotClausiusConstraint
  temperatureFieldDefinedClosed : E.temperatureFieldDefined

def EntropyCurrentClosed (E : EntropyCurrentPackage) : Prop :=
  E.secondLawHolds ∧ E.carnotClausiusConstraint ∧ E.temperatureFieldDefined

theorem entropy_current_closed_from_evidence (E : EntropyCurrentPackage) (Ev : EntropyCurrentEvidence E) : EntropyCurrentClosed E := by
  exact And.intro Ev.secondLawHoldsClosed (And.intro Ev.carnotClausiusConstraintClosed Ev.temperatureFieldDefinedClosed)

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse