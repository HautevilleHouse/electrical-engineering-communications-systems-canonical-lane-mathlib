import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure DetectionTheoryPackage where
  hypothesisTest : Type
  observationSpace : Type
  decisionRule : Type
  probabilityOfError : ℝ
  likelihoodRatioTest : Prop
  optimalDetectionAchieved : Prop

structure DetectionTheoryEvidence (D : DetectionTheoryPackage) where
  likelihoodRatioTestClosed : D.likelihoodRatioTest
  optimalDetectionAchievedClosed : D.optimalDetectionAchieved

def DetectionTheoryClosed (D : DetectionTheoryPackage) : Prop :=
  D.likelihoodRatioTest ∧ D.optimalDetectionAchieved

theorem detection_theory_closed_from_evidence (D : DetectionTheoryPackage)
    (E : DetectionTheoryEvidence D) : DetectionTheoryClosed D := by
  exact And.intro E.likelihoodRatioTestClosed E.optimalDetectionAchievedClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse
