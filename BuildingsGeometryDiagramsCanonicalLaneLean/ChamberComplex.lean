import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure ChamberComplexPackage where
  chambers : Type u
  adjacency : chambers → chambers → Prop
  galleryConnected : Prop
  simplyConnected : Prop
  chamberRank : Nat
  panelSystem : Type v

def ChamberComplexClosed (C : ChamberComplexPackage) : Prop :=
  C.galleryConnected ∧ C.simplyConnected

theorem chamber_complex_closed_from_evidence (C : ChamberComplexPackage)
    (hg : C.galleryConnected) (hs : C.simplyConnected) : ChamberComplexClosed C :=
  And.intro hg hs

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse