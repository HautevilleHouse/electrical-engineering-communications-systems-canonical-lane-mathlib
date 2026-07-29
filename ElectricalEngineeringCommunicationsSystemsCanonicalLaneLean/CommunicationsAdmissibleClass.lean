import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure CommunicationSystem where
  sourceAlphabet : Type
  channelTransition : Type
  decodingFunction : Type
  sourceEntropy : Prop
  channelCapacity : Prop
  reliableTransmission : Prop

structure CommunicationAdmittedObject where
  system : CommunicationSystem
  capacityBoundReached : Prop
  errorProbabilityZero : Prop
  conclusion : capacityBoundReached ∧ errorProbabilityZero

structure AdmissibleClass where
  object : CommunicationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse