import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure InformationTheoryPackage where
  entropyType : Type u
  mutualInformationType : Type v
  channelCapacity : ℝ
  shannonLimit : ℝ
  sourceCodingTheorem : Prop
  channelCodingTheorem : Prop

structure InformationTheoryEvidence (I : InformationTheoryPackage) where
  sourceCodingTheoremClosed : I.sourceCodingTheorem
  channelCodingTheoremClosed : I.channelCodingTheorem

def InformationTheoryClosed (I : InformationTheoryPackage) : Prop :=
  I.sourceCodingTheorem ∧ I.channelCodingTheorem

theorem information_theory_closed_from_evidence (I : InformationTheoryPackage)
    (E : InformationTheoryEvidence I) : InformationTheoryClosed I := by
  exact And.intro E.sourceCodingTheoremClosed E.channelCodingTheoremClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse