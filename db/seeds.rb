ls = Artist.create(name: "Lindsey Stirling")
sm = Album.create(name: "Shatter Me", artist: ls, release_date: "2014/04/29")

sm.songs << Song.create(name: 'Beyond the Veil', track_number: 1)
sm.songs << Song.create(name: 'Mirror Haus', track_number: 2)
sm.songs << Song.create(name: 'V-Pop', track_number: 3)
sm.songs << Song.create(name: 'Shatter Me', track_number: 4)


tpg = Artist.create(name: "The Piano Guys")
Album.create(name: "Wonders", artist: tpg, release_date: "2014/10/07")



