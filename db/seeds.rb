Presence.destroy_all
Event.destroy_all
Entity.destroy_all
Category.destroy_all
Tag.destroy_all

chris = Entity.create(handle: "christo", email: "chrismetzgr@gmail.com")
jesse = Entity.create(handle: "jesse", email: "jesse@gmail.com")

Connection.create(connecter: chris, connected: jesse)
Connection.create(connecter: jesse, connected: chris)


pe = Category.create(name: "performance")
spo = Category.create(name: "sport")
pro = Category.create(name: "protest")
dis = Category.create(name: "discussion")
com = Category.create(name: "community organizing")
ws = Category.create(name: "workshop")
dance = Category.create(name: "dance")
food = Category.create(name: "food")
hang = Category.create(name: "hangout")
cele = Category.create(name: "celebration")
fund = Category.create(name: "fundraiser")

# p16.categories << ws
# p16.categories << dance
# p17.categories << dance
# p17.categories << food
# p18.categories << food
# p18.categories << hang
# p19.categories << hang
# p19.categories << cele
# p20.categories << cele
# p20.categories << fund

# Presence.create(entity: chris, event: p20, presence_type: "organizer")


p10 = Event.new(address: "Mexico City, Mexico", approved: true, online: false, name: "Fruity Papi - A Daytime Party", date: Time.parse("October 22, 2020, 2PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.

Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.

Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")

p12 = Event.new(address: "Mexico City, Mexico", approved: true, online: false, name: "Bertha's Bday", date: Time.parse("October 22, 2020, 8PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.

Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.

Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p13 = Event.new(address: "Mexico City, Mexico", approved: true, online: false, name: "FTP - An Outdoor Protest", date: Time.parse("October 22, 2020, 11PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.

Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.

Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p14 = Event.new(address: "Mexico City, Mexico", approved: true, online: false, name: "Online Botany School", date: Time.parse("October 22, 2020, 12AM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.

Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.

Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p15 = Event.new(address: "Mexico City, Mexico", approved: true, online: false, name: "How To Get out of Handcuffs - An Online Workshop", date: Time.parse("October 22, 2020, 1PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.

Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.

Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p16 = Event.create(address: "Mexico City, Mexico", online: false, name: "Online Astrology Classes - Saturn", date: Time.parse("October 22, 2020, 6PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.
#
# Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.
#
# Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p17 = Event.create(address: Faker::Address.full_address, online: false, name: "ICE Protest", date: Time.parse("July 16, 2019, 8PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.
#
# Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.
#
# Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p18 = Event.create(address: Faker::Address.full_address, online: false, name: "Narcan Training", date: Time.parse("July 17, 2019, 9PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.
#
# Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.
#
# Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p19 = Event.create(address: Faker::Address.full_address, online: false, name: "Playground Coffee Outdoor Party", date: Time.parse("July 17, 2019, 10PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.
#
# Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.
#
# Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p20 = Event.create(address: Faker::Address.full_address, online: false, name: "Shindig", date: Time.parse("July 10, 2019, 11PM America/New_York"), description: "Exercitation culpa raw denim, master cleanse offal cillum kogi heirloom. Hella roof party aliquip esse ut, occaecat tattooed wolf magna fixie banh mi kombucha pickled elit. Tumblr hella YOLO health goth before they sold out dolor vegan marfa asymmetrical wolf meggings fixie aliquip typewriter. Enamel pin helvetica cloud bread lumbersexual beard reprehenderit. Fam 8-bit letterpress migas.
#
# Beard live-edge mixtape, meh seitan magna tousled PBR&B freegan offal. Gochujang fashion axe poke lo-fi williamsburg next level jean shorts glossier sustainable mlkshk health goth. Chartreuse affogato letterpress, jianbing listicle narwhal magna mollit cupidatat butcher. Ut vaporware iPhone irure seitan shaman affogato exercitation, kinfolk banjo cold-pressed voluptate humblebrag minim. Scenester try-hard gluten-free yuccie pickled hashtag bicycle rights, direct trade thundercats affogato mlkshk tofu succulents squid deep v.
#
# Incididunt hella heirloom eu la croix subway tile humblebrag. Twee mollit culpa messenger bag sartorial mixtape irony. Kale chips synth photo booth, gastropub listicle 90's jean shorts nisi id cornhole poke viral. Proident man braid labore food truck migas subway tile ramps id narwhal cupidatat slow-carb typewriter paleo trust fund tacos.", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")

p10.presences << Presence.create(entity: chris, presence_type: "organizer")
p12.presences << Presence.create(entity: chris, presence_type: "organizer")
p13.presences << Presence.create(entity: chris, presence_type: "organizer")
p14.presences << Presence.create(entity: chris, presence_type: "organizer")
p15.presences << Presence.create(entity: chris, presence_type: "organizer")

p10.categories << pe
p10.categories << spo
p12.categories << spo
p12.categories << pro
p13.categories << pro
p13.categories << dis
p14.categories << dis
p14.categories << com
p15.categories << ws
p15.categories << com

p10.save
p12.save
p13.save
p14.save
p15.save
#
# Presence.create(entity: jesse, event: p16, presence_type: "organizer")
#
# Presence.create(entity: jesse, event: p17, presence_type: "organizer")
#
# Presence.create(entity: jesse, event: p18, presence_type: "organizer")
#
# Presence.create(entity: jesse, event: p19, presence_type: "organizer")
