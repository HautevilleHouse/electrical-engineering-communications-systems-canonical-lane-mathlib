import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CommunicationsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse