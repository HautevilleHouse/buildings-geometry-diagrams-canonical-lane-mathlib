import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BuildingDiagram where
  vertexSet : Type
  edgeSet : Type
  incidenceMaps : Prop
  diagramAxioms : Prop
  conclusion : diagramAxioms

structure BuildingsGeometryAdmittedObject where
  diagram : BuildingDiagram
  closureCondition : Prop
  conclusion : closureCondition

def BuildingsGeometryWitnessClosed (O : BuildingsGeometryAdmittedObject) : Prop :=
  O.closureCondition

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse