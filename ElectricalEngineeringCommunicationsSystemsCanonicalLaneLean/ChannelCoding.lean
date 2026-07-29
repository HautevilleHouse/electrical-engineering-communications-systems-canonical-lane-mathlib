import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ChannelCoding where
  blockLength : ℕ
  codeRate : ℝ
  errorCorrectionCapability : Prop
  codeConstruction : String
  decodingAlgorithm : String

structure ChannelCodingEvidence (C : ChannelCoding) where
  errorCorrectionCapabilityClosed : C.errorCorrectionCapability

def ChannelCodingClosed (C : ChannelCoding) : Prop :=
  C.errorCorrectionCapability

theorem channel_coding_closed_from_evidence (C : ChannelCoding) (E : ChannelCodingEvidence C) :
    ChannelCodingClosed C := by
  exact E.errorCorrectionCapabilityClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse