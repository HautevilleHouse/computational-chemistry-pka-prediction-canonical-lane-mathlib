import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryPkaPredictionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PkaAdmittedObject where
  molecule : String
  pkaValue : Float
  functionalGroup : String
  solvent : String
  method : String

structure AdmissibleClass where
  lane : PkaAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryPkaPredictionCanonicalLaneLean
end HautevilleHouse