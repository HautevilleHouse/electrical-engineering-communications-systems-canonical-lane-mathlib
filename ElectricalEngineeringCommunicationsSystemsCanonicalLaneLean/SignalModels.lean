import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure SignalModel where
  carrierType : Type u
  signalSpace : Type v
  timeDomain : Type w
  bandLimited : Prop
  finiteEnergy : Prop

structure SignalModelEvidence (S : SignalModel) where
  bandLimitedClosed : S.bandLimited
  finiteEnergyClosed : S.finiteEnergy

def SignalModelClosed (S : SignalModel) : Prop :=
  S.bandLimited ∧ S.finiteEnergy

theorem signal_model_closed_from_evidence (S : SignalModel) (E : SignalModelEvidence S) :
    SignalModelClosed S := by
  exact And.intro E.bandLimitedClosed E.finiteEnergyClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse