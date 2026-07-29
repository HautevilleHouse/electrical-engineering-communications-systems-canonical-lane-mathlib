import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure DetectionEstimationSystem where
  detectionRule : String
  estimatorType : String
  probabilityOfError : ℝ → ℝ
  meanSquaredError : ℝ → ℝ
  consistency : Prop
  efficiency : Prop

structure DetectionEstimationEvidence (D : DetectionEstimationSystem) where
  detectionRuleClosed : D.detectionRule = "maximum_likelihood" ∨ D.detectionRule = "maximum_a_posteriori"
  estimatorTypeClosed : D.estimatorType = "minimum_variance_unbiased" ∨ D.estimatorType = "maximum_likelihood"
  probabilityOfErrorClosed : ∀ snr : ℝ, snr > 0 → D.probabilityOfError snr < 1
  meanSquaredErrorClosed : ∀ snr : ℝ, snr > 0 → D.meanSquaredError snr < ∞
  consistencyClosed : D.consistency
  efficiencyClosed : D.efficiency

def DetectionEstimationClosed (D : DetectionEstimationSystem) : Prop :=
  D.consistency ∧ D.efficiency ∧ (∀ snr : ℝ, snr > 0 → D.probabilityOfError snr < 1) ∧ (∀ snr : ℝ, snr > 0 → D.meanSquaredError snr < ∞)

theorem detection_estimation_closed_from_evidence (D : DetectionEstimationSystem) (E : DetectionEstimationEvidence D) : DetectionEstimationClosed D :=
  And.intro E.consistencyClosed (And.intro E.efficiencyClosed (And.intro E.probabilityOfErrorClosed E.meanSquaredErrorClosed))

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse