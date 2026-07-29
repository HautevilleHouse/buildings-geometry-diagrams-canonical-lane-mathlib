import HautevilleHouse.BuildingsGeometryDiagramsCanonicalLaneLean.DiagramClassificationPackage

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure EndpointClassificationPackage {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} (D : DiagramClassificationPackage W) where
  buildingType : String
  classificationOutcome : Prop
  sphericalListComplete : Prop
  affineListComplete : Prop

structure EndpointClassificationEvidence {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} {D : DiagramClassificationPackage W} (E : EndpointClassificationPackage D) where
  sphericalListCompleteClosed : E.sphericalListComplete
  affineListCompleteClosed : E.affineListComplete

def EndpointClassificationClosed {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} {D : DiagramClassificationPackage W} (E : EndpointClassificationPackage D) : Prop :=
  E.sphericalListComplete ∧ E.affineListComplete

theorem endpoint_classification_closed_from_evidence {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} {D : DiagramClassificationPackage W} (E : EndpointClassificationPackage D) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E :=
  And.intro Ev.sphericalListCompleteClosed Ev.affineListCompleteClosed

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
