import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure ChamberSystem where
  buildingType : Type
  apartmentType : Type
  chambers : Set apartmentType
  adjacencyRelation : apartmentType → apartmentType → Prop
  galleryConnected : Prop
  retractionToApartment : apartmentType → apartmentType

structure ChamberSystemEvidence (C : ChamberSystem) where
  chambersWellDefined : C.chambers ≠ ∅
  adjacencySymmetric : ∀ x y, C.adjacencyRelation x y → C.adjacencyRelation y x
  galleryConnectedClosed : C.galleryConnected
  retractionPreservesAdjacency : ∀ x y, C.adjacencyRelation x y → C.adjacencyRelation (C.retractionToApartment x) (C.retractionToApartment y)

def ChamberSystemClosed (C : ChamberSystem) : Prop :=
  C.chambers ≠ ∅ ∧ C.galleryConnected

theorem chamber_system_closed_from_evidence (C : ChamberSystem) (E : ChamberSystemEvidence C) :
    ChamberSystemClosed C := by
  exact And.intro E.chambersWellDefined E.galleryConnectedClosed

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse