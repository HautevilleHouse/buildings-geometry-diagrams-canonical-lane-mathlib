import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure CoxeterDiagram where
  generatingSet : Type u
  relations : generatingSet -> generatingSet -> Nat
  symmetricRelations : Prop
  diagonalIsOne : Prop
  positiveCoxeterMatrix : Prop

structure CoxeterDiagramEvidence (D : CoxeterDiagram) where
  symmetricRelationsClosed : D.symmetricRelations
  diagonalIsOneClosed : D.diagonalIsOne
  positiveCoxeterMatrixClosed : D.positiveCoxeterMatrix

def CoxeterDiagramClosed (D : CoxeterDiagram) : Prop :=
  D.symmetricRelations ∧ D.diagonalIsOne ∧ D.positiveCoxeterMatrix

theorem coxeter_diagram_closed_from_evidence (D : CoxeterDiagram)
    (E : CoxeterDiagramEvidence D) : CoxeterDiagramClosed D := by
  exact And.intro E.symmetricRelationsClosed
    (And.intro E.diagonalIsOneClosed E.positiveCoxeterMatrixClosed)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
