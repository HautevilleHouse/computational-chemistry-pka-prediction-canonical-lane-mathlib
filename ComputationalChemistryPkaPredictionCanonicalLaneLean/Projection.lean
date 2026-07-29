import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace ComputationalChemistryPkaPredictionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def pkaProjection : Projection PkaEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem pka_projection_idempotent (x : PkaEndgameState) :
    pkaProjection.toFun (pkaProjection.toFun x) = pkaProjection.toFun x := by
  exact pkaProjection.idempotent x

end ComputationalChemistryPkaPredictionCanonicalLaneLean
end HautevilleHouse