import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure CodingTheoryPackage where
  codeType : Type u
  blockLength : ℕ
  rate : ℝ
  minimumDistance : ℕ
  errorCorrectionCapability : Prop
  linearCodeProperty : Prop

structure CodingTheoryEvidence (C : CodingTheoryPackage) where
  errorCorrectionCapabilityClosed : C.errorCorrectionCapability
  linearCodePropertyClosed : C.linearCodeProperty

def CodingTheoryClosed (C : CodingTheoryPackage) : Prop :=
  C.errorCorrectionCapability ∧ C.linearCodeProperty

theorem coding_theory_closed_from_evidence (C : CodingTheoryPackage)
    (E : CodingTheoryEvidence C) : CodingTheoryClosed C := by
  exact And.intro E.errorCorrectionCapabilityClosed E.linearCodePropertyClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse