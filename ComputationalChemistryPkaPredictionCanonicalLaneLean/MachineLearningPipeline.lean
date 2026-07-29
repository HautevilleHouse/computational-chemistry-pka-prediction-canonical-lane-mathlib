import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemsPkaPred

structure TrainingDatum where
  molecule : Molecule
  experimentalPka : Float
  predictedPka : Float
  descriptorVector : List Float
  deriving Repr, DecidableEq

structure ModelHyperparameters where
  learningRate : Float
  nEstimators : Nat
  maxDepth : Nat
  regularization : Float
  deriving Repr, DecidableEq

structure ValidationMetrics where
  mae : Float
  rmse : Float
  rSquared : Float
  testSize : Nat
  deriving Repr, DecidableEq

structure AdmissiblePkaInput where
  molecule : Molecule
  experimentalPka : Float
  deriving Repr, DecidableEq

structure PkaAdmittedObject where
  input : AdmissiblePkaInput
  predictedPka : Float
  predictionError : Float
  modelVersion : String
  deriving Repr, DecidableEq

end ComputationalChemsPkaPred
end HautevilleHouse
