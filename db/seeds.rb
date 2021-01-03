games = Game.create([
    {
        sport: "Football",
        gender: "boys",
        level: "Varsity",
        home_team: "Paint Valley",
        visiting_team: "Adena",
        max_capacity: "1000",
        event_date: DateTime.new(2020, 9, 1),
        price: 500,
    },

    {
        sport: "Football",
        gender: "boys",
        level: "Varsity",
        home_team: "Paint Valley",
        visiting_team: "Unioto",
        max_capacity: "1000",
        event_date: DateTime.new(2020, 9, 8),
        price: 500,
    },
    {
        sport: "Volleyball",
        gender: "girls",
        level: "JV",
        home_team: "Paint Valley",
        visiting_team: "Piketon",
        max_capacity: "270",
        event_date: DateTime.new(2020, 9, 5),
        price: 700,
    }
])

users = User.create([
    {
        first_name: "Greatest",
        last_name: "Ever",
        email: "my@email.com",
        cellphone: "1234567890",
        password: "12345",
    },
    {
        first_name: "Jeorge",
        last_name: "Simpilton",
        email: "jeo@email.com",
        cellphone: "2345678901",
        password: "pas3wrid",
    }
])

tickets = Ticket.create([
    {
        game: games.first,
        user: users.first,
        used: false
    },
    {
        game: games.first,
        user: users.second,
        used: false
    }
])