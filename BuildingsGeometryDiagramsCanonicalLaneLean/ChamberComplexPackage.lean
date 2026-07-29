import HautevilleHouse.BuildingsGeometryDiagramsCanonicalLaneLean.TitsSystemPackage

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure ChamberComplexPackage (P : TitsSystemPackage) where
  chambers : Type u
  adjacency : Type v
  galleryConnected : Prop
  simplyConnected : Prop
  residueFinite : Prop
  sphericalBuilding : Prop

structure ChamberComplexEvidence {P : TitsSystemPackage} (C : ChamberComplexPackage P) where
  galleryConnectedClosed : C.galleryConnected
  simplyConnectedClosed : C.simplyConnected
  residueFiniteClosed : C.residueFinite
  sphericalBuildingClosed : C.sphericalBuilding

def ChamberComplexClosed {P : TitsSystemPackage} (C : ChamberComplexPackage P) : Prop :=
  C.galleryConnected ∧ C.simplyConnected ∧ C.residueFinite ∧ C.sphericalBuilding

theorem chamber_complex_closed_from_evidence {P : TitsSystemPackage} (C : ChamberComplexPackage P) (E : ChamberComplexEvidence C) :
    ChamberComplexClosed C :=
  And.intro E.galleryConnectedClosed (And.intro E.simplyConnectedClosed (And.intro E.residueFiniteClosed E.sphericalBuildingClosed))

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse
