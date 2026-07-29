import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BuildingsGeometryPackage where
  building : Type u
  chamberSystem : Type v
  rank : Nat
  diagram : Type w
  positiveWeylGroup : Type x
  titsSystem : Prop
  cosetDecomposition : Prop
  bnPair : Prop
  apartmentStructure : Prop

structure BuildingsGeometryEvidence (B : BuildingsGeometryPackage) where
  titsSystemClosed : B.titsSystem
  cosetDecompositionClosed : B.cosetDecomposition
  bnPairClosed : B.bnPair
  apartmentStructureClosed : B.apartmentStructure

def BuildingsGeometryClosed (B : BuildingsGeometryPackage) : Prop :=
  B.titsSystem ∧ B.cosetDecomposition ∧ B.bnPair ∧ B.apartmentStructure

theorem buildings_geometry_closed_from_evidence (B : BuildingsGeometryPackage)
    (E : BuildingsGeometryEvidence B) : BuildingsGeometryClosed B := by
  exact And.intro E.titsSystemClosed (And.intro E.cosetDecompositionClosed
    (And.intro E.bnPairClosed E.apartmentStructureClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse