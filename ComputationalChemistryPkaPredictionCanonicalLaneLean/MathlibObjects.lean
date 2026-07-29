import canonicalLaneMathlib.MathlibObjects
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryPkaPredictionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev MoleculeFormula := String
abbrev PkaValue := Float
abbrev Solvent := String
abbrev FunctionalGroup := String
abbrev PkaPredictionModel := String

structure PkaClassicalObject where
  molecule : MoleculeFormula
  pkaValue : PkaValue
  solvent : Solvent
  functionalGroup : FunctionalGroup

structure PkaAdmittedObject where
  classicalObject : PkaClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure PkaEndgameState where
  admittedObject : PkaAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalChemistryPkaPredictionCanonicalLaneLean
end HautevilleHouse