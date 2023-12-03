data:extend(
{
	{
		type = "technology",
		name = "big-electric-mining-drill",
		localised_description = {"technology-description.big-electric-mining-drill"},
		icon = "__bigminingdrill__/graphics/technology/big-electric-mining-drill.png",
		icon_size = 347,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "big-electric-mining-drill"
			}
		},
		prerequisites = {"advanced-electronics"},
		unit = {
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "e-a-a"
	},
})