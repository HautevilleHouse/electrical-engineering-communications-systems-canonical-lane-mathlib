import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.SignalModels

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure CommunicationChannel (S : SignalModel) where
  channelModel : Type u
  noiseType : String
  capacity : Prop
  fadingModel : Prop

structure CommunicationChannelEvidence {S : SignalModel} (C : CommunicationChannel S) where
  capacityClosed : C.capacity
  fadingModelClosed : C.fadingModel

def CommunicationChannelClosed {S : SignalModel} (C : CommunicationChannel S) : Prop :=
  C.capacity ∧ C.fadingModel

theorem communication_channel_closed_from_evidence {S : SignalModel} (C : CommunicationChannel S) (E : CommunicationChannelEvidence C) :
    CommunicationChannelClosed C := by
  exact And.intro E.capacityClosed E.fadingModelClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse