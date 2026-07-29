import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BNAndTitsSystemsPackage where
  group : Type u
  borelSubgroup : Type v
  weylGroup : Type w
  parabolicSubgroups : Type x
  bnPairDiscrete : Prop
  titsAxioms : Prop
  weylGroupFinite : Prop
  bruhatDecomposition : Prop

structure BNAndTitsSystemsEvidence (B : BNAndTitsSystemsPackage) where
  bnPairDiscreteClosed : B.bnPairDiscrete
  titsAxiomsClosed : B.titsAxioms
  weylGroupFiniteClosed : B.weylGroupFinite
  bruhatDecompositionClosed : B.bruhatDecomposition

def BNAndTitsSystemsClosed (B : BNAndTitsSystemsPackage) : Prop :=
  B.bnPairDiscrete ∧ B.titsAxioms ∧ B.weylGroupFinite ∧ B.bruhatDecomposition

theorem bn_and_tits_systems_closed_from_evidence (B : BNAndTitsSystemsPackage)
    (E : BNAndTitsSystemsEvidence B) : BNAndTitsSystemsClosed B := by
  exact And.intro E.bnPairDiscreteClosed (And.intro E.titsAxiomsClosed
    (And.intro E.weylGroupFiniteClosed E.bruhatDecompositionClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse