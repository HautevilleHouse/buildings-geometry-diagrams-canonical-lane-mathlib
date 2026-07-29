import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

def gateClosed (A : AdmissibleObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_object (A : AdmissibleObject) :
    gateClosed A := by
  exact A.gateWitness

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse