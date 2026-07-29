import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BuildingsAdmittedObject where
  space : Type
  buildingDiagram : Type
  diagramIsFinite : Prop
  isThick : Prop
  conclusion : diagramIsFinite ∧ isThick

def BuildingsWitnessClosed (O : BuildingsAdmittedObject) : Prop :=
  O.diagramIsFinite ∧ O.isThick

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse