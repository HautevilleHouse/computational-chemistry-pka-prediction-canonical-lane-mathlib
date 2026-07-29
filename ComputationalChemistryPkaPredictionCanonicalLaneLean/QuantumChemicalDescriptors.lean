import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemsPkaPred

inductive DescriptorType where
  | hBondDonor
  | hBondAcceptor
  | electronegativity
  | polarizability
  deriving Repr, DecidableEq

structure DescriptorValue where
  descriptorType : DescriptorType
  value : Float
  weight : Float
  deriving Repr, DecidableEq

structure ConformerEnsemble where
  conformerCount : Nat
  boltzmannWeights : List Float
  descriptors : List (List DescriptorValue)
  deriving Repr, DecidableEq

def averageDescriptor (descriptors : List DescriptorValue) : Float :=
  let total := descriptors.foldl (fun acc d => acc + d.value * d.weight) 0.0
  let weightSum := descriptors.foldl (fun acc d => acc + d.weight) 0.0
  if weightSum > 0.0 then total / weightSum else 0.0

structure PkaPredictionModel where
  trainingSetSize : Nat
  rSquared : Float
  rmse : Float
  deriving Repr, DecidableEq

end ComputationalChemsPkaPred
end HautevilleHouse
