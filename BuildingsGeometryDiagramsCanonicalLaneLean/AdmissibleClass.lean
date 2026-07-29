import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure AdmissibleObject where
  object : BuildingsGeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleObject) : Prop :=
  BuildingsGeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse