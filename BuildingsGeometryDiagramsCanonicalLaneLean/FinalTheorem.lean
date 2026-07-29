import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

def ConstrainedBuildingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_buildings_endgame (A : AdmissibleClass) :
    ConstrainedBuildingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse