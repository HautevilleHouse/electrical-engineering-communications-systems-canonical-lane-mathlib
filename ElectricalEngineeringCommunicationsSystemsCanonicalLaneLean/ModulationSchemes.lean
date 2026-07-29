import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.SignalModels

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ModulationScheme (S : SignalModel) where
  constellation : Type u
  symbolRate : Prop
  modulationType : String
  orthogonality : Prop
  demodulationPerformance : Prop

structure ModulationSchemeEvidence {S : SignalModel} (M : ModulationScheme S) where
  symbolRateClosed : M.symbolRate
  orthogonalityClosed : M.orthogonality
  demodulationPerformanceClosed : M.demodulationPerformance

def ModulationSchemeClosed {S : SignalModel} (M : ModulationScheme S) : Prop :=
  M.symbolRate ∧ M.orthogonality ∧ M.demodulationPerformance

theorem modulation_scheme_closed_from_evidence {S : SignalModel} (M : ModulationScheme S) (E : ModulationSchemeEvidence M) :
    ModulationSchemeClosed M := by
  exact And.intro E.symbolRateClosed (And.intro E.orthogonalityClosed E.demodulationPerformanceClosed)

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse