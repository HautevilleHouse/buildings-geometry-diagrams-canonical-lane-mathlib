import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure RootSystem where
  vectorSpace : Type u
  innerProduct : vectorSpace -> vectorSpace -> ℝ
  roots : Set vectorSpace
  reducedRootSystem : Prop
  crystallographicCondition : Prop

structure RootSystemEvidence (R : RootSystem) where
  reducedRootSystemClosed : R.reducedRootSystem
  crystallographicConditionClosed : R.crystallographicCondition

def RootSystemClosed (R : RootSystem) : Prop :=
  R.reducedRootSystem ∧ R.crystallographicCondition

theorem root_system_closed_from_evidence (R : RootSystem)
    (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.reducedRootSystemClosed E.crystallographicConditionClosed

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
