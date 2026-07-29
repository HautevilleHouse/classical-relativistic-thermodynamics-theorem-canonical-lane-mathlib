import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean

structure ThermoFieldEquationsPackage where
  stressEnergyTensor : Type
  einsteinTensor : Type
  metricField : Type
  fluidFourVelocity : Type
  thermodynamicVariables : Type
  einsteinFieldEquation : Prop
  energyConservationLaw : Prop
  entropyCurrentConservation : Prop
  equationOfStateGiven : Prop

structure ThermoFieldEquationsEvidence (T : ThermoFieldEquationsPackage) where
  einsteinFieldEquationClosed : T.einsteinFieldEquation
  energyConservationLawClosed : T.energyConservationLaw
  entropyCurrentConservationClosed : T.entropyCurrentConservation
  equationOfStateGivenClosed : T.equationOfStateGiven

def ThermoFieldEquationsClosed (T : ThermoFieldEquationsPackage) : Prop :=
  T.einsteinFieldEquation ∧ T.energyConservationLaw ∧ T.entropyCurrentConservation ∧ T.equationOfStateGiven

theorem thermo_field_equations_closed_from_evidence (T : ThermoFieldEquationsPackage) (E : ThermoFieldEquationsEvidence T) : ThermoFieldEquationsClosed T := by
  exact And.intro E.einsteinFieldEquationClosed (And.intro E.energyConservationLawClosed (And.intro E.entropyCurrentConservationClosed E.equationOfStateGivenClosed))

end ClassicalRelativisticThermodynamicsTheoremCanonicalLaneLean
end HautevilleHouse