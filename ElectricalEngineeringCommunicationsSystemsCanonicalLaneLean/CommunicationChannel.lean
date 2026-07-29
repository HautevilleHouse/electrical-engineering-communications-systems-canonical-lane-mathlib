import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ChannelCodingPackage where
  channel : CommunicationsChannel
  codebook : Type
  decodingRule : codebook → channel.outputAlphabet → codebook
  errorProbability : ℝ
  capacityAchieved : Prop

structure ChannelCodingEvidence (C : ChannelCodingPackage) where
  codebookNonempty : Nonempty C.codebook
  decodingCorrect : Prop
  errorProbabilitySmall : C.errorProbability ≤ 0.1
  capacityAchievedClosed : C.capacityAchieved

def ChannelCodingClosed (C : ChannelCodingPackage) : Prop :=
  C.capacityAchieved ∧ (C.errorProbability ≤ 0.1)

theorem channel_coding_closed_from_evidence (C : ChannelCodingPackage) (E : ChannelCodingEvidence C) :
    ChannelCodingClosed C := by
  exact And.intro E.capacityAchievedClosed E.errorProbabilitySmall

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse