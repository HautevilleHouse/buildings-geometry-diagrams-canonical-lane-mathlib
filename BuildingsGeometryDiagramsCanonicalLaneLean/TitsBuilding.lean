import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure TitsBuilding where
  chamberSystem : Type u
  adjacencyRelation : chamberSystem -> chamberSystem -> Prop
  galleryConnected : Prop
  apartmentSystem : Prop
  sphericalBuilding : Prop

structure TitsBuildingEvidence (T : TitsBuilding) where
  galleryConnectedClosed : T.galleryConnected
  apartmentSystemClosed : T.apartmentSystem
  sphericalBuildingClosed : T.sphericalBuilding

def TitsBuildingClosed (T : TitsBuilding) : Prop :=
  T.galleryConnected ∧ T.apartmentSystem ∧ T.sphericalBuilding

theorem tits_building_closed_from_evidence (T : TitsBuilding)
    (E : TitsBuildingEvidence T) : TitsBuildingClosed T := by
  exact And.intro E.galleryConnectedClosed
    (And.intro E.apartmentSystemClosed E.sphericalBuildingClosed)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
