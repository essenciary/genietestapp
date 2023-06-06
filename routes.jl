using Genie
using Genie.Renderers.Json

route("/") do
  serve_static_file("welcome.html")
end

route("/greet") do
  "Hello, world!"
end

route("/greet/:name") do
  "Hello, $(params(:name))!"
end

route("/api/v1/greet/:name") do
  Dict(
    "message" => "Hello, $(params(:name))!"
  ) |> json
end