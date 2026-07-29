import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure CoxeterAndWeylGroupsPackage where
  coxeterSystem : Type u
  coxeterMatrix : Type v
  lengthFunction : Type w
  weylGroup : Type x
  isomorphicToWeyl : Prop
  bruhatOrder : Prop
  exchangeCondition : Prop
  deletionCondition : Prop

structure CoxeterAndWeylGroupsEvidence (C : CoxeterAndWeylGroupsPackage) where
  isomorphicToWeylClosed : C.isomorphicToWeyl
  bruhatOrderClosed : C.bruhatOrder
  exchangeConditionClosed : C.exchangeCondition
  deletionConditionClosed : C.deletionCondition

def CoxeterAndWeylGroupsClosed (C : CoxeterAndWeylGroupsPackage) : Prop :=
  C.isomorphicToWeyl ∧ C.bruhatOrder ∧ C.exchangeCondition ∧ C.deletionCondition

theorem coxeter_and_weyl_groups_closed_from_evidence (C : CoxeterAndWeylGroupsPackage)
    (E : CoxeterAndWeylGroupsEvidence C) : CoxeterAndWeylGroupsClosed C := by
  exact And.intro E.isomorphicToWeylClosed (And.intro E.bruhatOrderClosed
    (And.intro E.exchangeConditionClosed E.deletionConditionClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse