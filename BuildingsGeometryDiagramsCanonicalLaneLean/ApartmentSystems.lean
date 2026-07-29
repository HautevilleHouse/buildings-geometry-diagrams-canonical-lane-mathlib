import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure ApartmentSystemPackage where
  apartments : Type u
  building : Type v
  chamberSystem : Type w
  apartmentIntersection : Type x
  simplicialRealization : Type y
  apartmentCovers : Prop
  isWeylGroup : Prop
  intersectionStable : Prop
  retractionExists : Prop

structure ApartmentSystemEvidence (A : ApartmentSystemPackage) where
  apartmentCoversClosed : A.apartmentCovers
  isWeylGroupClosed : A.isWeylGroup
  intersectionStableClosed : A.intersectionStable
  retractionExistsClosed : A.retractionExists

def ApartmentSystemClosed (A : ApartmentSystemPackage) : Prop :=
  A.apartmentCovers ∧ A.isWeylGroup ∧ A.intersectionStable ∧ A.retractionExists

theorem apartment_system_closed_from_evidence (A : ApartmentSystemPackage)
    (E : ApartmentSystemEvidence A) : ApartmentSystemClosed A := by
  exact And.intro E.apartmentCoversClosed (And.intro E.isWeylGroupClosed
    (And.intro E.intersectionStableClosed E.retractionExistsClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse