import HautevilleHouse.BuildingsGeometryDiagramsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure TitsSystemPackage where
  apartmentSystem : Type u
  chamberSystem : Type v
  weylGroup : Type w
  spherical : Prop
  thick : Prop
  residueConnected : Prop

structure TitsSystemEvidence (P : TitsSystemPackage) where
  sphericalClosed : P.spherical
  thickClosed : P.thick
  residueConnectedClosed : P.residueConnected

def TitsSystemClosed (P : TitsSystemPackage) : Prop :=
  P.spherical ∧ P.thick ∧ P.residueConnected

theorem tits_system_closed_from_evidence (P : TitsSystemPackage) (E : TitsSystemEvidence P) :
    TitsSystemClosed P :=
  And.intro E.sphericalClosed (And.intro E.thickClosed E.residueConnectedClosed)

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
