import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ChannelCodingPackage where
  channelCapacity : ℝ
  codeRate : ℝ
  achievableRateRegion : Prop
  errorExponent : ℝ → ℝ
  codingTheoremStatement : Prop

structure ChannelCodingEvidence (C : ChannelCodingPackage) where
  achievableRateRegionClosed : C.achievableRateRegion
  codingTheoremStatementClosed : C.codingTheoremStatement

def ChannelCodingClosed (C : ChannelCodingPackage) : Prop :=
  C.achievableRateRegion ∧ C.codingTheoremStatement

theorem channel_coding_closed_from_evidence (C : ChannelCodingPackage)
    (E : ChannelCodingEvidence C) : ChannelCodingClosed C := by
  exact And.intro E.achievableRateRegionClosed E.codingTheoremStatementClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse