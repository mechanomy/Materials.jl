export LinearElastic 
struct LinearElastic
  ρ::Density
  Ut::Pascal # ultimate tensile stress
  E::ElasticModulus
  G::ShearModulus
  ν::Real #Poisson's ratio
  name::String
  source::String # url, book, or standard reference
end
LinearElastic(; ρ::Density, Ut::Pascal, E::ElasticModulus, G::ShearModulus, ν::Real, name="", url="") = LinearElastic(ρ, Ut, E, G, ν, name, url)

ss302 = LinearElastic(Ut=860u"MPa", E=194u"GPa", G=75u"GPa", ρ= 7920u"kg/m^3", ν=0.30, name="ss302" )
ss304 = LinearElastic(Ut=0u"MPa", E=193e9u"N/m^2", G=0u"GPa", ρ=8.00u"g/cm^3", ν=-1, name="ss304" )
a228 = LinearElastic(Ut=0u"MPa", E=210e9u"N/m^2", G=0u"GPa", ρ=7.80u"g/cm^3", ν=-1, name="a228 cold drawn steel", url="")
vanadium = LinearElastic(Ut=0u"MPa", E=125.5e9u"N/m^2", G=0u"GPa", ρ=6.11u"g/cm^3", ν=-1, name="vanadium wire", url="")
tungsten = LinearElastic(Ut=0u"MPa", E=400e9u"N/m^2", G=0u"GPa", ρ=19.3u"g/cm^3", ν=-1, name="vanadium wire", url="")
# nitinol = LinearElastic(Ut=0u"MPa", E=75e9u"N/m^2", G=0u"GPa", ρ=6.50u"g/cm^3", ν=-1, name="nitinol wire", url="https://en.wikipedia.org/wiki/Nickel_titanium") #austentite, the parent
nitinol = LinearElastic(Ut=0u"MPa", E=40e9u"N/m^2", G=0u"GPa", ρ=6.50u"g/cm^3", ν=-1, name="nitinol wire", url="https://en.wikipedia.org/wiki/Nickel_titanium") #martensite, the room-temp child