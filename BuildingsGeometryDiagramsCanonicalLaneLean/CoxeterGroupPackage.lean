import HautevilleHouse.BuildingsGeometryDiagramsCanonicalLaneLean.TitsSystemPackage

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure CoxeterGroupPackage (P : TitsSystemPackage) where
  generators : Type u
  relations : Prop
  irreducible : Prop
  crystallographic : Prop
  finite : Prop

structure CoxeterGroupEvidence {P : TitsSystemPackage} (C : CoxeterGroupPackage P) where
  relationsClosed : C.relations
  irreducibleClosed : C.irreducible
  crystallographicClosed : C.crystallographic
  finiteClosed : C.finite

def CoxeterGroupClosed {P : TitsSystemPackage} (C : CoxeterGroupPackage P) : Prop :=
  C.relations ∧ C.irreducible ∧ C.crystallographic ∧ C.finite

theorem coxeter_group_closed_from_evidence {P : TitsSystemPackage} (C : CoxeterGroupPackage P) (E : CoxeterGroupEvidence C) :
    CoxeterGroupClosed C :=
  And.intro E.relationsClosed (And.intro E.irreducibleClosed (And.intro E.crystallographicClosed E.finiteClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
