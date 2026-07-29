import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ModulationScheme where
  modulationType : String
  order : ℕ
  averagePower : ℝ
  berFormula : ℝ → ℝ
  spectralEfficiency : ℝ
  errorProbabilityDecreasingWithSNR : Prop

structure ModulationEvidence (M : ModulationScheme) where
  orderClosed : M.order ≥ 2
  averagePowerClosed : M.averagePower > 0
  berFormulaClosed : ∀ snr : ℝ, snr > 0 → M.berFormula snr > 0
  spectralEfficiencyClosed : M.spectralEfficiency > 0
  errorProbabilityDecreasingWithSNRClosed : M.errorProbabilityDecreasingWithSNR

def ModulationClosed (M : ModulationScheme) : Prop :=
  M.order ≥ 2 ∧ M.averagePower > 0 ∧ M.spectralEfficiency > 0 ∧ M.errorProbabilityDecreasingWithSNR

theorem modulation_closed_from_evidence (M : ModulationScheme) (E : ModulationEvidence M) : ModulationClosed M :=
  And.intro E.orderClosed (And.intro E.averagePowerClosed (And.intro E.spectralEfficiencyClosed E.errorProbabilityDecreasingWithSNRClosed))

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse