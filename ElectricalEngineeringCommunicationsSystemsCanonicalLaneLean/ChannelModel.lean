import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure ChannelModelPackage where
  channelType : Type u
  noisePowerSpectralDensity : ℝ
  fadingDistribution : Type v
  coherenceTime : ℝ
  awgnAssumption : Prop
  fadingMemoryless : Prop

structure ChannelModelEvidence (C : ChannelModelPackage) where
  awgnAssumptionClosed : C.awgnAssumption
  fadingMemorylessClosed : C.fadingMemoryless

def ChannelModelClosed (C : ChannelModelPackage) : Prop :=
  C.awgnAssumption ∧ C.fadingMemoryless

theorem channel_model_closed_from_evidence (C : ChannelModelPackage)
    (E : ChannelModelEvidence C) : ChannelModelClosed C := by
  exact And.intro E.awgnAssumptionClosed E.fadingMemorylessClosed

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse