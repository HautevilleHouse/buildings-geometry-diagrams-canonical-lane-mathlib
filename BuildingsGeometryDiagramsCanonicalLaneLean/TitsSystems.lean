import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure TitsSystem where
  groupG : Type
  subgroupB : Set groupG
  subgroupN : Set groupG
  pairBN : Prop
  weylGroup : Type
  coxeterMatrix : weylGroup → weylGroup → Nat
  apartments : Type

def TitsSystemClosed (T : TitsSystem) : Prop :=
  T.pairBN

theorem tits_system_trivially_closed (T : TitsSystem) : TitsSystemClosed T := by
  exact T.pairBN

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse