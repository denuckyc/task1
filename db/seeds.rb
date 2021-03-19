servers = Server.create([
                         { name: "1tv-test" },
                         { name: "1tv-int" },
                         { name: "1tv-news" }
                        ])

bandwidths = Bandwidth.create([
                      { server_id: servers[0].id, value: 1.55, interface_name: "output", value_id: 1 },
                      { server_id: servers[1].id, value: 2.10, interface_name: "output", value_id: 2 },
                      { server_id: servers[1].id, value: 333, interface_name: "broadcast", value_id: 3 },
                      { server_id: servers[2].id, value: 50, interface_name: "broadcast", value_id: 4 },
                      { server_id: servers[2].id, value: 100, interface_name: "output", value_id: 5 }
                    ])
