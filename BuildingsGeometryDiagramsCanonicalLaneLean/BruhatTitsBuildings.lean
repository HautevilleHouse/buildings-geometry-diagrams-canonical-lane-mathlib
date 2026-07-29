import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

structure BruhatTitsBuilding where
  groupType : Type
  coxeterSystem : Type
  apartments : Set (Set chamberType)
  type : Nat
  thick : Prop
  affineWeilGroup : groupType → groupType
  buildingMorphism : Type

structure BruhatTitsEvidence (B : BruhatTitsBuilding) where
  apartmentsCovered : ∀ x, ∃ A ∈ B.apartments, x ∈ A
  thickClosed : B.thick
  affineWeilGroupAction : ∀ g : B.groupType, B.buildingMorphism

def BruhatTitsClosed (B : BruhatTitsBuilding) : Prop :=
  (∀ x, ∃ A ∈ B.apartments, x ∈ A) ∧ B.thick

theorem bruhat_tits_closed_from_evidence (B : BruhatTitsBuilding) (E : BruhatTitsEvidence B) :
    BruhatTitsClosed B := by
  exact And.intro E.apartmentsCovered E.thickClosed

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse