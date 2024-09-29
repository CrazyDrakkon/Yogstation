//both the definition and the default maintenance theme, everything else is relative to this
/datum/generator_theme
	///Weight for use in picking this theme
	var/weight = 50
	///Weighted list of floorings for the generator to choose from
	var/list/weighted_possible_floor_types = list()
	///Weighted list of walls for the generator to choose from
	var/list/weighted_possible_wall_types = list()
	///Weighted list of extra features that spawn against walls.
	var/list/weighted_againstwall_spawn_list = list(
		/obj/machinery/space_heater = 1,
		/obj/structure/closet/emcloset = 2,
		/obj/structure/closet/firecloset = 2,
		/obj/structure/closet/toolcloset = 1,
		list(/obj/structure/table, /obj/effect/spawner/lootdrop/maintenance) = 1, //we do it this way so we can spawn things in groups
		list(/obj/structure/rack, /obj/effect/spawner/lootdrop/maintenance) = 1
	)
	///Weighted list of extra features that spawn out in the open
	var/list/weighted_openfloor_spawn_list = list(
		/obj/structure/grille = 3,
		/obj/structure/grille/broken = 4,
		/obj/structure/girder/displaced = 2,
		/obj/structure/girder = 2,
		/obj/effect/spawner/lootdrop/maintenance = 2
	)
	///Weighted list of extra features that spawn in narrow hallways
	var/list/weighted_hallway_spawn_list = list(
		/obj/structure/grille = 3,
		/obj/structure/grille/broken = 4,
		/obj/structure/girder/displaced = 2,
		/obj/effect/spawner/lootdrop/maintenance = 2
	)

//Library themed
/datum/generator_theme/wooden
	weight = 20
	weighted_possible_floor_types = list(
		/turf/open/floor/carpet = 1
		)

	weighted_possible_wall_types  = list(
		/turf/closed/wall/mineral/wood = 1
		)

	weighted_againstwall_spawn_list = list(
		/obj/machinery/space_heater = 1,
		/obj/structure/filingcabinet/chestdrawer/wheeled = 2,
		/obj/structure/chair/wood = 2,
		list(/obj/structure/table/wood, /obj/item/book/random) = 1,
		list(/obj/structure/table/wood, /obj/item/flashlight/lamp/green {pixel_y = 14; pixel_x = -6}, /obj/effect/spawner/lootdrop/maintenance) = 1,
		list(/obj/structure/rack, /obj/item/book/random, /obj/effect/spawner/lootdrop/maintenance) = 1
		)

	weighted_openfloor_spawn_list = list(
		/obj/structure/bookcase/random = 4,
		/obj/effect/spawner/lootdrop/maintenance = 2,
		/obj/item/book/random = 3,
		)

	weighted_hallway_spawn_list = list(
		/obj/effect/spawner/lootdrop/maintenance = 8,
		/obj/item/book/random = 7,
		/obj/structure/mineral_door/wood = 1
		)

//dungeon themed
/datum/generator_theme/meatlocker
	weight = 10
	weighted_possible_floor_types = list(
		/turf/open/floor/stone = 1
		)

	weighted_possible_wall_types  = list(
		/turf/closed/wall/mineral/iron = 1
		)

	weighted_againstwall_spawn_list = list(
		/obj/structure/bonfire = 1,
		/obj/structure/closet/crate/freezer = 4,
		/obj/structure/closet/secure_closet/freezer/meat/open = 1,
		list(/obj/structure/table, /obj/effect/spawner/lootdrop/maintenance) = 1,
		list(/obj/structure/rack, /obj/effect/spawner/lootdrop/maintenance) = 1,
		list(/obj/effect/spawner/lootdrop/random_meat, /obj/effect/gibspawner/generic) = 1,
		/obj/effect/decal/remains/human = 1,
		/obj/effect/gibspawner/human = 1,
		)

	weighted_openfloor_spawn_list = list(
		/obj/structure/kitchenspike = 4,
		/obj/effect/spawner/lootdrop/maintenance = 2,
		/obj/effect/spawner/lootdrop/random_meat = 2,
		list(/obj/effect/spawner/lootdrop/random_meat, /obj/effect/gibspawner/generic) = 1,
		/obj/effect/decal/remains/human = 1,
		/obj/effect/gibspawner/human = 1
		)

	weighted_hallway_spawn_list = list(
		/obj/effect/spawner/lootdrop/maintenance = 6,
		/obj/effect/spawner/lootdrop/random_meat = 3,
		list(/obj/effect/spawner/lootdrop/random_meat, /obj/effect/gibspawner/generic) = 2,
		/obj/effect/decal/remains/human = 2,
		/obj/effect/gibspawner/human = 2,
		/obj/effect/spawner/mineral_door/iron = 1
		)

//jungle themed
/datum/generator_theme/jungle
	weight = 10
	weighted_possible_floor_types = list(
		/turf/open/floor/plating/dirt/jungleland/backrooms = 1
		)

	weighted_possible_wall_types  = list(
		/turf/closed/wall/mineral/bamboo = 1
		)

	weighted_againstwall_spawn_list = list(
		list(/obj/structure/table/wood, /obj/effect/spawner/lootdrop/maintenance) = 1,
		list(/obj/structure/closet/crate/wooden, /obj/effect/spawner/lootdrop/maintenance) = 1,
		/obj/structure/flora/ausbushes = 1,
		/obj/structure/flora/ausbushes/leafybush = 1,
		/obj/structure/flora/ausbushes/sunnybush = 1,
		/obj/structure/flora/ausbushes/lavendergrass = 1,
		/obj/structure/flora/ausbushes/ywflowers = 1,
		/obj/structure/flora/ausbushes/ppflowers = 1,
		/obj/structure/flora/ausbushes/fullgrass = 1,
		/obj/structure/herb/lantern = 1
		)

	weighted_openfloor_spawn_list = list(
		/obj/effect/spawner/lootdrop/maintenance = 2,
		/obj/structure/flora/ausbushes = 1,
		/obj/structure/flora/ausbushes/leafybush = 1,
		/obj/structure/flora/ausbushes/sunnybush = 1,
		/obj/structure/flora/ausbushes/lavendergrass = 1,
		/obj/structure/flora/ausbushes/ywflowers = 1,
		/obj/structure/flora/ausbushes/ppflowers = 1,
		/obj/structure/flora/ausbushes/fullgrass = 1,
		/obj/structure/flora/tree/jungle = 5
		)

	weighted_hallway_spawn_list = list(
		/obj/effect/spawner/lootdrop/maintenance = 2,
		/obj/structure/flora/ausbushes = 1,
		/obj/structure/flora/ausbushes/leafybush = 1,
		/obj/structure/flora/ausbushes/sunnybush = 1,
		/obj/structure/flora/ausbushes/lavendergrass = 1,
		/obj/structure/flora/ausbushes/ywflowers = 1,
		/obj/structure/flora/ausbushes/ppflowers = 1,
		/obj/structure/flora/ausbushes/fullgrass = 1,
		/obj/structure/herb/lantern = 1
		)

//lavaland themed
/datum/generator_theme/lavaland
	weight = 10
	weighted_possible_floor_types = list(
		/turf/open/floor/grass/snow/basalt/backrooms = 1
		)

	weighted_possible_wall_types  = list(
		/turf/closed/wall{
			girder_type = null;
			sheet_type = /obj/item/stack/ore/iron;
			baseturfs = /turf/open/floor/grass/snow/basalt/backrooms;
			base_icon_state = "smoothrocks";
			icon = 'icons/turf/mining.dmi';
			icon_state = "rock"
			}
		)

	weighted_againstwall_spawn_list = list(
		list(/obj/structure/closet/crate/necropolis, /obj/effect/spawner/lootdrop/maintenance, /obj/effect/spawner/lootdrop/maintenance) = 1,
		/obj/structure/ore_box = 2,
		/obj/structure/flora/rock/pile = 3,
		/obj/item/flashlight/lantern{
			start_on = 1
			} = 1
		)

	weighted_openfloor_spawn_list = list(
		list(/obj/structure/closet/crate/necropolis, /obj/effect/spawner/lootdrop/maintenance, /obj/effect/spawner/lootdrop/maintenance) = 1,
		/obj/structure/flora/rock = 1,
		/obj/structure/flora/rock/pile = 3,
		/obj/structure/geyser = 1,
		/obj/item/flashlight/lantern{
			start_on = 1
			} = 1
		)

	weighted_hallway_spawn_list = list(
		list(/obj/structure/closet/crate/necropolis, /obj/effect/spawner/lootdrop/maintenance, /obj/effect/spawner/lootdrop/maintenance) = 1,
		/obj/structure/flora/rock/pile = 4,
		/obj/item/flashlight/lantern{start_on = 1} = 1
		)

//space themed
/datum/generator_theme/space
	var/weight = 10
	var/list/weighted_possible_floor_types = list(
		/turf/open/floor/fakespace
		)

	var/list/weighted_possible_wall_types = list(
		/turf/closed/wall{
			base_icon_state = "floor";
			icon = 'icons/turf/space.dmi';
			icon_state = "0";
			sheet_type = /obj/item/stack/tile/fakespace
			}
		)

	var/list/weighted_againstwall_spawn_list = list(
		/obj/machinery/suit_storage_unit = 2,
		/obj/structure/closet/emcloset = 4,
		/obj/structure/closet/firecloset = 4,
		/obj/structure/closet/toolcloset = 2,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 8,
		/obj/item/toy/spinningtoy = 1,
		/obj/item/toy/minimeteor = 1,
		/obj/item/toy/plush/carpplushie = 1,
		/obj/item/toy/plush/abductor = 1,
		/obj/item/toy/plush/abductor/agent = 1,
		/obj/item/toy/plush/nukeplushie = 1,
		/obj/item/toy/plush/inorixplushie = 1,
		/obj/item/toy/figure/atmos = 1,
		/obj/item/toy/figure/ninja = 1,
		/obj/item/toy/figure/dsquad = 1,
		)

	var/list/weighted_openfloor_spawn_list = list(
		/obj/structure/grille = 6,
		/obj/structure/grille/broken = 8,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 8,
		/obj/item/toy/spinningtoy = 1,
		/obj/item/toy/minimeteor = 1,
		/obj/item/toy/plush/carpplushie = 1,
		/obj/item/toy/plush/abductor = 1,
		/obj/item/toy/plush/abductor/agent = 1,
		/obj/item/toy/plush/nukeplushie = 1,
		/obj/item/toy/plush/inorixplushie = 1,
		/obj/item/toy/figure/atmos = 1,
		/obj/item/toy/figure/ninja = 1,
		/obj/item/toy/figure/dsquad = 1,
		)

	var/list/weighted_hallway_spawn_list = list(
		/obj/structure/grille = 6,
		/obj/structure/grille/broken = 8,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 8,
		/obj/item/toy/spinningtoy = 1,
		/obj/item/toy/minimeteor = 1,
		/obj/item/toy/plush/carpplushie = 1,
		/obj/item/toy/plush/abductor = 1,
		/obj/item/toy/plush/abductor/agent = 1,
		/obj/item/toy/plush/nukeplushie = 1,
		/obj/item/toy/plush/inorixplushie = 1,
		/obj/item/toy/figure/atmos = 1,
		/obj/item/toy/figure/ninja = 1,
		/obj/item/toy/figure/dsquad = 1,
		)

//classic backrooms themed
/datum/generator_theme/classic
	var/weight = 30
	var/list/weighted_possible_floor_types = list(
		/turf/closed/wall{
			base_icon_state = "snow_wall";
			icon = 'icons/turf/walls/snow_wall.dmi';
			icon_state = "snow_wall-0";
			color = "#948d45"
			}
		)

	var/list/weighted_possible_wall_types = list(
		/turf/open/floor/carpet{
			color = "#736327";
			icon = 'icons/turf/snow.dmi';
			base_icon_state = "floor";
			icon_state = "snow"
			sheet_type = /obj/item/stack/packageWrap
			}
		)

		var/list/weighted_againstwall_spawn_list = list(
		/obj/machinery/closet = 3,
		/obj/structure/rack = 3,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 1,
		list(/obj/structure/rack, /obj/effect/spawner/lootdrop/maintenance) = 1,
		/obj/machinery/light/floor/built = 1,
		/obj/machinery/light/floor = 1,
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 1
		)

	var/list/weighted_openfloor_spawn_list = list(
		/turf/closed/wall{
			base_icon_state = "snow_wall";
			icon = 'icons/turf/walls/snow_wall.dmi';
			icon_state = "snow_wall-0";
			color = "#948d45"
			} = 3,
		/obj/effect/spawner/lootdrop/maintenance = 2,
		/obj/machinery/light/floor/built = 1,
		/obj/machinery/light/floor = 1,
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 1
		)

	var/list/weighted_hallway_spawn_list = list(
		/obj/effect/spawner/lootdrop/maintenance = 1,
		/obj/machinery/light/floor/built = 1,
		/obj/machinery/light/floor = 1,
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 1
		)

//poolrooms themed
/datum/generator_theme/poolrooms
	var/weight = 20
	var/list/weighted_possible_floor_types = list(
		/turf/open/floor/fakespace
		)

	var/list/weighted_possible_wall_types = list(
		/turf/open/floor/plating{
			base_icon_state = null;
			icon_state = "pool";
			icon = 'icons/obj/pool.dmi'
			}
		)
	
	var/list/weighted_againstwall_spawn_list = list(
		/obj/structure/closet/athletic_mixed = 3,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 3,
		/obj/item/pool/pool_noodle = 1,
		/obj/item/pool/rubber_ring = 1,
		/obj/item/bikehorn/rubberducky = 1,
		/obj/machinery/shower{
			on = 1
			} = 1,
		)
	
	var/list/weighted_openfloor_spawn_list = list(
		/obj/structure/liquid_pump = 4,
		/obj/effect/spawner/lootdrop/maintenance) = 3,
		/obj/item/pool/pool_noodle = 1,
		/obj/item/pool/rubber_ring = 1,
		/obj/item/bikehorn/rubberducky = 1,
		)

	var/list/weighted_hallway_spawn_list = list(
		/obj/structure/grille = 4,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 3,
		/obj/item/pool/pool_noodle = 1,
		/obj/item/pool/rubber_ring = 1,
		/obj/item/bikehorn/rubberducky = 1,
		)

//alleyway themed
/datum/generator_theme/alleyway
	var/weight = 20
	var/list/weighted_possible_floor_types = list(
		/turf/open/floor/fakespace
		)

	var/list/weighted_possible_wall_types = list(
		/turf/open/floor/plating/backrooms{
			icon_state = "snow";
			icon = 'icons/turf/snow.dmi';
			color = "#252525";
			name = "asphalt"
			}
		)

	var/list/weighted_againstwall_spawn_list = list(
		/obj/machinery/space_heater = 3
		/obj/machinery/power/smes/empty = 3
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 4,
		list(/obj/structure/closet/crate/trashcart, /obj/effect/spawner/lootdrop/trashbin, /obj/effect/spawner/lootdrop/maintenance, /obj/effect/spawner/lootdrop/maintenance) = 4,
		list(/obj/structure/closet/crate/bin, /obj/effect/spawner/lootdrop/trashbin, /obj/effect/spawner/lootdrop/maintenance) = 7,
		list(/obj/item/storage/bag/trash, /obj/effect/spawner/lootdrop/trashbin) = 3,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "body"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "matt";
			color = "blue"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "prolizard";
			color = "green"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "cyka";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "face";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "antilizard";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "voxpox";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "guy"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "end";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "amyjon";
			color = "pink"
			} = 1
		)

	var/list/weighted_openfloor_spawn_list = list(
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 4,
		/obj/effect/turf_decal/bot_white = 10,
		/obj/effect/spawner/lootdrop/maintenance = 8,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "body"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "matt";
			color = "blue"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "prolizard";
			color = "green"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "cyka";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "face";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "antilizard";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "voxpox";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "guy"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "end";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "amyjon";
			color = "pink"
			} = 1
		)

	var/list/weighted_hallway_spawn_list = list(
		/obj/structure/fence/door = 2,
		/obj/structure/fence/large{
			dir = 4
			} = 4,
		/obj/structure/fence/cut/large{
			dir = 4
			} = 4,
		/obj/machinery/atmospherics/components/unary/vent_pump/on = 2,
		list(/obj/structure/closet, /obj/effect/spawner/lootdrop/maintenance) = 8,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "body"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "matt";
			color = "blue"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "prolizard";
			color = "green"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "cyka";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "face";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "antilizard";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "voxpox";
			color = "yellow"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "guy"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "end";
			color = "red"
			} = 1,
		/obj/effect/decal/cleanable/crayon{
			icon_state = "amyjon";
			color = "pink"
			} = 1
		)

/turf/open/floor/plating/dirt/jungleland/backrooms //fullbright backrooms? in this economy?
	light_power = 1
	light_range = 2

/turf/open/floor/grass/snow/basalt/backrooms
	initial_gas_mix = "o2=44;n2=164;TEMP=300"
