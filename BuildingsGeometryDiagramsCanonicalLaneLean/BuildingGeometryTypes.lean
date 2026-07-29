import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BuildingGeometryPackage where
  rootSystemType : String
  coxeterMatrix : List (List Nat)
  chamberSystem : Type u
  galleryConnected : Prop
  apartmentStructure : Prop
  buildingDimension : Nat
  buildingType : String

def BuildingGeometryClosed (B : BuildingGeometryPackage) : Prop :=
  B.galleryConnected ∧ B.apartmentStructure

theorem building_geometry_closed_from_evidence (B : BuildingGeometryPackage)
    (hg : B.galleryConnected) (ha : B.apartmentStructure) : BuildingGeometryClosed B :=
  And.intro hg ha

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse