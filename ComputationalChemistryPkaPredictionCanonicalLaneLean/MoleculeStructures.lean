import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemsPkaPred

structure Molecule where
  smiles : String
  heavyAtomCount : Nat
  rotatableBondCount : Nat
  charge : Int
  deriving Repr, DecidableEq

structure AtomFeature where
  element : String
  degree : Nat
  hybridization : String
  isAcidic : Bool
  pkaContribution : Float
  deriving Repr, DecidableEq

structure MolecularGraph where
  atoms : List AtomFeature
  adjacency : List (Nat × Nat)
  deriving Repr, DecidableEq

structure PkaSite where
  atomIdx : Nat
  pkaValue : Float
  environmentalCorrection : Float
  deriving Repr, DecidableEq

end ComputationalChemsPkaPred
end HautevilleHouse
