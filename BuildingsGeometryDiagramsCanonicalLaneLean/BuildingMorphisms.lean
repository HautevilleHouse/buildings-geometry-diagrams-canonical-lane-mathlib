import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BuildingMorphismPackage where
  sourceBuilding : Type u
  targetBuilding : Type v
  chamberMap : sourceBuilding → targetBuilding
  rankPreserving : Prop
  adjacencyPreserving : Prop
  apartmentPreserving : Prop

def BuildingMorphismClosed (M : BuildingMorphismPackage) : Prop :=
  M.rankPreserving ∧ M.adjacencyPreserving ∧ M.apartmentPreserving

theorem building_morphism_closed_from_evidence (M : BuildingMorphismPackage)
    (hr : M.rankPreserving) (ha : M.adjacencyPreserving) (hap : M.apartmentPreserving) :
    BuildingMorphismClosed M :=
  And.intro hr (And.intro ha hap)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse