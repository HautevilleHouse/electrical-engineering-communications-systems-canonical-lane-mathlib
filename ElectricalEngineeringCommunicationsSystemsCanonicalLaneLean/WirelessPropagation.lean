import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.CommunicationChannels

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure WirelessPropagation {S : SignalModel} (C : CommunicationChannel S) where
  pathLossModel : String
  multipathProfile : Prop
  mimoCapability : Prop

structure WirelessPropagationEvidence {S : SignalModel} {C : CommunicationChannel S} (W : WirelessPropagation C) where
  multipathProfileClosed : W.multipathProfile
  mimoCapabilityClosed : W.mimoCapability

def WirelessPropagationClosed {S : SignalModel} {C : CommunicationChannel S} (W : WirelessPropagation C) : Prop :=
  W.multipathProfile ∧ W.mimoCapability

theorem wireless_propagation_closed_from_evidence {S : SignalModel} {C : CommunicationChannel S} (W : WirelessPropagation C) (E : WirelessPropagationEvidence W) :
    WirelessPropagationClosed W := by
  exact And.intro E.multipathProfileClosed E.mimoCapabilityClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse