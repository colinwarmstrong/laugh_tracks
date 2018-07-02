# Don't use this as a pattern. Doing small weird things to make the challenge work.
require_relative '../app/models/comedian'
require_relative '../app/models/special'

iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
Special.create(name: "War Paint", comedian_id: iliza.id)
Special.create(name: "Freezing Hot", comedian_id: iliza.id)
Special.create(name: "Confirmed Kills", comedian_id: iliza.id)

hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
Special.create(name: "My Name is Hannibal", comedian_id: hannibal.id)
Special.create(name: "Animal Furnace", comedian_id: hannibal.id)
Special.create(name: "Live from Chicago", comedian_id: hannibal.id)
Special.create(name: "Comedy Camisado", comedian_id: hannibal.id)
Special.create(name: "Hannibal Takes Edinburgh", comedian_id: hannibal.id)

mike = Comedian.create(name: "Mike Birbiglia", age: 39)
Special.create(name: "What I Should Have Said Was Nothing", comedian_id: mike.id)
Special.create(name: "My Girlfriiend's Boyfriend", comedian_id: mike.id)
Special.create(name: "Thank God for Jokes", comedian_id: mike.id)

paul = Comedian.create(name: "Paul Mooney", age: 76)
Special.create(name: "Know Your History", comedian_id: paul.id)
Special.create(name: "Paul Mooney", comedian_id: paul.id)

ali = Comedian.create(name: "Ali Wong", age: 35)
Special.create(name: "Baby Cobra", comedian_id: ali.id)

tom = Comedian.create(name: "Tom Segura", age: 38)
Special.create(name: "Completely Normal", comedian_id: tom.id)
Special.create(name: "Mostly Stories", comedian_id: tom.id)

reggie = Comedian.create(name: "Reggie Watts", age: 45)
Special.create(name: "Disinformation", comedian_id: reggie.id)
Special.create(name: "Why S**t So Crazy", comedian_id: reggie.id)
Special.create(name: "A'Live' in Central Park", comedian_id: reggie.id)
Special.create(name: "Transition", comedian_id: reggie.id)
Special.create(name: "Spatial", comedian_id: reggie.id)

tj = Comedian.create(name: "T.J. Miller", age: 36)
Special.create(name: "Meticulously Ridiculous", comedian_id: tj.id)

Special.create(name: "Why is Rabbit Crying", comedian_id: al.id)

kumail = Comedian.create(name: "Kumail Nanjiani", age: 39)
Special.create(name: "Beta Male", comedian_id: kumail.id)

ari = Comedian.create(name: "Ari Shaffir", age: 43)
Special.create(name: "Passive Aggressive", comedian_id: ari.id)
Special.create(name: "Paid Regular", comedian_id: ari.id)
Special.create(name: "Double Negative", comedian_id: ari.id)
