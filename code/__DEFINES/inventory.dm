/*ALL DEFINES RELATED TO INVENTORY OBJECTS, MANAGEMENT, ETC, GO HERE*/

//ITEM INVENTORY WEIGHT, FOR w_class
/// Usually items smaller then a human hand, (e.g. playing cards, lighter, scalpel, coins/holochips)
#define WEIGHT_CLASS_TINY     1
/// Pockets can hold small and tiny items, (e.g. flashlight, multitool, grenades, GPS device)
#define WEIGHT_CLASS_SMALL    2
/// Standard backpacks can carry tiny, small & normal items, (e.g. fire extinguisher, stun baton, gas mask, metal sheets)
#define WEIGHT_CLASS_NORMAL   3
/// Items that can be weilded or equipped but not stored in an inventory, (e.g. defibrillator, backpack, space suits)
#define WEIGHT_CLASS_BULKY    4
/// Usually represents objects that require two hands to operate, (e.g. shotgun, two-handed melee weapons)
#define WEIGHT_CLASS_HUGE     5
/// Essentially means it cannot be picked up or placed in an inventory, (e.g. mech parts, safe)
#define WEIGHT_CLASS_GIGANTIC 6

//Inventory depth: limits how many nested storage items you can access directly.
//1: stuff in mob, 2: stuff in backpack, 3: stuff in box in backpack, etc
#define INVENTORY_DEPTH		3
#define STORAGE_VIEW_DEPTH	2

//ITEM INVENTORY SLOT BITMASKS
/// Suit slot (armors, costumes, space suits, etc.)
#define ITEM_SLOT_OCLOTHING (1<<0)
/// Jumpsuit slot
#define ITEM_SLOT_ICLOTHING (1<<1)
/// Glove slot
#define ITEM_SLOT_GLOVES (1<<2)
/// Glasses slot
#define ITEM_SLOT_EYES (1<<3)
/// Ear slot (radios, earmuffs)
#define ITEM_SLOT_EARS (1<<4)
/// Mask slot
#define ITEM_SLOT_MASK (1<<5)
/// Head slot (helmets, hats, etc.)
#define ITEM_SLOT_HEAD (1<<6)
/// Shoe slot
#define ITEM_SLOT_FEET (1<<7)
/// ID slot
#define ITEM_SLOT_ID (1<<8)
/// Belt slot
#define ITEM_SLOT_BELT (1<<9)
/// Back slot
#define ITEM_SLOT_BACK (1<<10)
/// Dextrous simplemob "hands" (used for Drones and Dextrous Guardians)
#define ITEM_SLOT_DEX_STORAGE (1<<11)
/// Neck slot (ties, bedsheets, scarves)
#define ITEM_SLOT_NECK (1<<12)
/// A character's hand slots
#define ITEM_SLOT_HANDS (1<<13)
/// Inside of a character's backpack
#define ITEM_SLOT_BACKPACK (1<<14)
/// Suit Storage slot
#define ITEM_SLOT_SUITSTORE (1<<15)
/// Left Pocket slot
#define ITEM_SLOT_LPOCKET (1<<16)
/// Right Pocket slot
#define ITEM_SLOT_RPOCKET (1<<17)
/// Handcuff slot
#define ITEM_SLOT_HANDCUFFED (1<<18)
/// Legcuff slot (bolas, beartraps)
#define ITEM_SLOT_LEGCUFFED (1<<19)

/// Total amount of slots
#define SLOTS_AMT 20 // Keep this up to date!

//SLOT GROUP HELPERS
#define ITEM_SLOT_POCKETS (ITEM_SLOT_LPOCKET|ITEM_SLOT_RPOCKET)

//Bit flags for the flags_inv variable, which determine when a piece of clothing hides another. IE a helmet hiding glasses.
//Make sure to update check_obscured_slots() if you add more.
#define HIDEGLOVES		(1<<0)
#define HIDESUITSTORAGE	(1<<1)
#define HIDEJUMPSUIT	(1<<2)	//these first four are only used in exterior suits
#define HIDESHOES		(1<<3)
#define HIDEMASK		(1<<4)	//these last six are only used in masks and headgear.
#define HIDEEARS		(1<<5)	// (ears means headsets and such)
#define HIDEEYES		(1<<6)	// Whether eyes and glasses are hidden
#define HIDEFACE		(1<<7)	// Whether we appear as unknown.
#define HIDEHAIR		(1<<8)
#define HIDEFACIALHAIR	(1<<9)
#define HIDENECK		(1<<10)

//bitflags for clothing coverage - also used for limbs
#define HEAD		(1<<0)
#define CHEST		(1<<1)
#define GROIN		(1<<2)
#define LEG_LEFT	(1<<3)
#define LEG_RIGHT	(1<<4)
#define LEGS		(LEG_LEFT | LEG_RIGHT)
#define FOOT_LEFT	(1<<5)
#define FOOT_RIGHT	(1<<6)
#define FEET		(FOOT_LEFT | FOOT_RIGHT)
#define ARM_LEFT	(1<<7)
#define ARM_RIGHT	(1<<8)
#define ARMS		(ARM_LEFT | ARM_RIGHT)
#define HAND_LEFT	(1<<9)
#define HAND_RIGHT	(1<<10)
#define HANDS		(HAND_LEFT | HAND_RIGHT)
#define NECK		(1<<11)
#define FULL_BODY	(~0)

//defines for the index of hands
#define LEFT_HANDS 1
#define RIGHT_HANDS 2

//flags for female outfits: How much the game can safely "take off" the uniform without it looking weird
#define NO_FEMALE_UNIFORM			0
#define FEMALE_UNIFORM_FULL			1
#define FEMALE_UNIFORM_TOP			2

//flags for digitigrade checks related to footwear. Only Human accessible / Both accessible / Only funny leg accessible.
#define NO_DIGIT			0
#define EITHER_STYLE		1
#define YES_DIGIT		 	2

//flags for outfits that have mutantrace variants (try not to use this): Currently only needed if you're trying to add tight fitting bootyshorts
#define DIGITIGRADE_VARIATION (1<<0)

//flags for covering body parts
#define GLASSESCOVERSEYES	(1<<0)
#define MASKCOVERSEYES		(1<<1)		// get rid of some of the other retardation in these flags
#define HEADCOVERSEYES		(1<<2)		// feel free to realloc these numbers for other purposes
#define MASKCOVERSMOUTH		(1<<3)		// on other items, these are just for mask/head
#define HEADCOVERSMOUTH		(1<<4)

#define TINT_DARKENED 2			//Threshold of tint level to apply weld mask overlay
#define TINT_BLIND 3			//Threshold of tint level to obscure vision fully

//Allowed equipment lists for security vests and hardsuits.

GLOBAL_LIST_INIT(advanced_hardsuit_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/gun,
	/obj/item/melee/baton,
	/obj/item/melee/classic_baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals)))

GLOBAL_LIST_INIT(security_hardsuit_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/gun,
	/obj/item/melee/baton,
	/obj/item/melee/classic_baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals)))

GLOBAL_LIST_INIT(detective_vest_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/detective_scanner,
	/obj/item/flashlight,
	/obj/item/taperecorder,
	/obj/item/gun,
	/obj/item/lighter,
	/obj/item/melee/baton,
	/obj/item/melee/classic_baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/storage/fancy/cigarettes,
	/obj/item/tank/internals)))

GLOBAL_LIST_INIT(security_vest_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/gun,
	/obj/item/kitchen/knife/combat,
	/obj/item/melee/baton,
	/obj/item/melee/classic_baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals)))

GLOBAL_LIST_INIT(security_wintercoat_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/storage/fancy/cigarettes,
	/obj/item/gun,
	/obj/item/lighter,
	/obj/item/melee/baton,
	/obj/item/melee/classic_baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals,
	/obj/item/toy)))

GLOBAL_LIST_INIT(labcoat_allowed, typecacheof(list(
	/obj/item/analyzer,
	/obj/item/multitool/tricorder,
	/obj/item/stack/medical,
	/obj/item/dnainjector,
	/obj/item/reagent_containers/dropper,
	/obj/item/reagent_containers/syringe,
	/obj/item/reagent_containers/autoinjector,
	/obj/item/healthanalyzer,
	/obj/item/reagent_containers/glass/bottle,
	/obj/item/reagent_containers/glass/beaker,
	/obj/item/reagent_containers/pill,
	/obj/item/storage/pill_bottle,
	/obj/item/paper,
	/obj/item/melee/classic_baton/telescopic,
	/obj/item/soap,
	/obj/item/sensor_device,
	/obj/item/tank/internals, 
	/obj/item/hypospray,
	/obj/item/flashlight)))

GLOBAL_LIST_INIT(mining_allowed, typecacheof(list(
	/obj/item/flashlight, 
	/obj/item/tank/internals, 
	/obj/item/resonator, 
	/obj/item/mining_scanner, 
	/obj/item/t_scanner/adv_mining_scanner, 
	/obj/item/gun/energy/kinetic_accelerator, 
	/obj/item/pickaxe, 
	/obj/item/organ/regenerative_core/legion, 
	/obj/item/kitchen/knife/combat)))
