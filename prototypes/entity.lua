 data:extend({
{
    type = "mining-drill",
    name = "big-electric-mining-drill",
    icon = "__bigminingdrill__/graphics/icons/big-electric-mining-drill.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "big-electric-mining-drill"},
    max_health = 600,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
	  collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
	  selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    input_fluid_box = {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        -- top
        { position = {-1, -3} },
        { position = {1, -3} },
        --right
        { position = {3, -1} },
        { position = {3, 1} },
        --bottom
        { position = {-1, 3} },
        { position = {1, 3} },
        -- left
        { position = {-3, -1} },
        { position = {-3, 1} },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__bigminingdrill__/sound/big-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        priority = "high",
        filename = "__bigminingdrill__/graphics/entity/big-hr-electric-mining-drill-N.png",
        line_length = 8,
        width = 65,
        height = 75,
        frame_count = 64,
        animation_speed = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -8),
        run_mode = "forward-then-backward",
        scale = 5 / 2
      },
      east =
      {
        priority = "high",
        filename = "__bigminingdrill__/graphics/entity/big-hr-electric-mining-drill-E.png",
        line_length = 8,
        width = 70,
        height = 66,
        frame_count = 64,
        animation_speed = 1,
        direction_count = 1,
        shift = util.by_pixel(8, 0),
        run_mode = "forward-then-backward",
        scale = 5 / 2
      },
      south =
      {
        priority = "high",
        filename = "__bigminingdrill__/graphics/entity/big-hr-electric-mining-drill-S.png",
        line_length = 8,
        width = 65,
        height = 73,
        frame_count = 64,
        animation_speed = 1,
        direction_count = 1,
        shift = util.by_pixel(0, 0),
        run_mode = "forward-then-backward",
        scale = 5 / 2
      },
      west =
      {
        priority = "high",
        filename = "__bigminingdrill__/graphics/entity/big-hr-electric-mining-drill-W.png",
        line_length = 8,
        width = 70,
        height = 66,
        frame_count = 64,
        animation_speed = 1,
        direction_count = 1,
        shift = util.by_pixel(-8, 0),
        run_mode = "forward-then-backward",
        scale = 5 / 2
        }
    },

    mining_speed = 2.5 / 2,
    base_productivity = 1.00,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 25,
      usage_priority = "secondary-input"
    },
    energy_usage = "300kW",
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -2.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }}
)