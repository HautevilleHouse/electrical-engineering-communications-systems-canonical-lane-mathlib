import HautevilleHouse.ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  commConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end ElectricalEngineeringCommunicationsSystemsCanonicalLaneLean
end HautevilleHouse