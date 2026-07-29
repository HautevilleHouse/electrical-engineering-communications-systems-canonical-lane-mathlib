import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure CodingScheme where
  codeRate : ℝ
  blockLength : ℕ
  minimumDistance : ℕ
  errorCorrectionCapability : ℕ
  codingGain : ℝ
  shannonLimitApproached : Prop

structure CodingEvidence (C : CodingScheme) where
  codeRateClosed : 0 < C.codeRate ∧ C.codeRate < 1
  blockLengthClosed : C.blockLength > 0
  minimumDistanceClosed : C.minimumDistance ≥ 1
  errorCorrectionCapabilityClosed : C.errorCorrectionCapability = (C.minimumDistance - 1) / 2
  codingGainClosed : C.codingGain > 0
  shannonLimitApproachedClosed : C.shannonLimitApproached

def CodingClosed (C : CodingScheme) : Prop :=
  (0 < C.codeRate ∧ C.codeRate < 1) ∧ C.blockLength > 0 ∧ C.codingGain > 0 ∧ C.shannonLimitApproached

theorem coding_closed_from_evidence (C : CodingScheme) (E : CodingEvidence C) : CodingClosed C :=
  And.intro E.codeRateClosed (And.intro E.blockLengthClosed (And.intro E.codingGainClosed E.shannonLimitApproachedClosed))

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse