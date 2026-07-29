import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BNPair where
  groupG : Type u
  borelSubgroupB : Set groupG
  weylSubgroupW : Set groupG
  normalizerN : Set groupG
  closedUnderMultiplication : Prop
  bruhatDecomposition : Prop
  buildingAxioms : Prop

structure BNPairEvidence (B : BNPair) where
  closedUnderMultiplicationClosed : B.closedUnderMultiplication
  bruhatDecompositionClosed : B.bruhatDecomposition
  buildingAxiomsClosed : B.buildingAxioms

def BNPairClosed (B : BNPair) : Prop :=
  B.closedUnderMultiplication ∧ B.bruhatDecomposition ∧ B.buildingAxioms

theorem bn_pair_closed_from_evidence (B : BNPair)
    (E : BNPairEvidence B) : BNPairClosed B := by
  exact And.intro E.closedUnderMultiplicationClosed
    (And.intro E.bruhatDecompositionClosed E.buildingAxiomsClosed)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
