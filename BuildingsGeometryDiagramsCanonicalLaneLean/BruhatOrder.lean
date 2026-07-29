import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BruhatOrder where
  weylGroup : Type u
  lengthFunction : weylGroup -> Nat
  bruhatRelation : weylGroup -> weylGroup -> Prop
  posetAxioms : Prop
  reflectionOrder : Prop

structure BruhatOrderEvidence (B : BruhatOrder) where
  posetAxiomsClosed : B.posetAxioms
  reflectionOrderClosed : B.reflectionOrder

def BruhatOrderClosed (B : BruhatOrder) : Prop :=
  B.posetAxioms ∧ B.reflectionOrder

theorem bruhat_order_closed_from_evidence (B : BruhatOrder)
    (E : BruhatOrderEvidence B) : BruhatOrderClosed B := by
  exact And.intro E.posetAxiomsClosed E.reflectionOrderClosed

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
