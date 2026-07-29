import HautevilleHouse.BuildingsGeometryDiagramsCanonicalLaneLean.ChamberComplexPackage

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure DiagramClassificationPackage {P : TitsSystemPackage} {C : ChamberComplexPackage P} (W : CoxeterGroupPackage P) where
  coxeterDiagram : Type u
  dynkinDiagram : Type v
  irreducibleRank : Nat
  sphericalType : Prop
  affineType : Prop
  classificationComplete : Prop

structure DiagramClassificationEvidence {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} (D : DiagramClassificationPackage W) where
  sphericalTypeClosed : D.sphericalType
  affineTypeClosed : D.affineType
  classificationCompleteClosed : D.classificationComplete

def DiagramClassificationClosed {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} (D : DiagramClassificationPackage W) : Prop :=
  D.sphericalType ∧ D.affineType ∧ D.classificationComplete

theorem diagram_classification_closed_from_evidence {P : TitsSystemPackage} {C : ChamberComplexPackage P} {W : CoxeterGroupPackage P} (D : DiagramClassificationPackage W) (E : DiagramClassificationEvidence D) :
    DiagramClassificationClosed D :=
  And.intro E.sphericalTypeClosed (And.intro E.affineTypeClosed E.classificationCompleteClosed)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
