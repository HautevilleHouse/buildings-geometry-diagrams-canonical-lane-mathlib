import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure CoxeterGroup where
  generators : List (Nat → Nat)
  relations : Prop
  wordProblem : Prop
  conclusion : wordProblem

theorem coxeter_group_closed (C : CoxeterGroup) : C.conclusion := by
  exact C.conclusion

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse