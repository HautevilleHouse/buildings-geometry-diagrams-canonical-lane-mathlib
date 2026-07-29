import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure CoxeterSystemPackage where
  generatingSet : Type u
  relations : List (String × String)
  coxeterMatrixSize : Nat
  coxeterMatrixEntries : List (Nat × Nat × Nat)
  coxeterGroupPresentation : Prop
  exchangeConditionHolds : Prop

def CoxeterSystemClosed (C : CoxeterSystemPackage) : Prop :=
  C.coxeterGroupPresentation ∧ C.exchangeConditionHolds

theorem coxeter_system_closed_from_evidence (C : CoxeterSystemPackage)
    (hg : C.coxeterGroupPresentation) (he : C.exchangeConditionHolds) :
    CoxeterSystemClosed C :=
  And.intro hg he

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse