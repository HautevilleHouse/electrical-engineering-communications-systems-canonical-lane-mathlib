import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.CommunicationsBridge

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

def ConstrainedCommunicationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_communications_endgame (A : AdmissibleClass) : ConstrainedCommunicationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse