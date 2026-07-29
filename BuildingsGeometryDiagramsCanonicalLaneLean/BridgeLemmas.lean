import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsCanonicalLaneLean

def bridgeClosed (A : AdmissibleObject) : Prop :=
  BuildingsGeometryWitnessClosed A.object

theorem bridge_from_admissible_object (A : AdmissibleObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end BuildingsGeometryDiagramsCanonicalLaneLean
end HautevilleHouse