// To parse this JSON data, do
//
//     final recipe = recipeFromJson(jsonString);

import 'dart:convert';

Response recipeFromJson(String? str) => Response.fromJson(json.decode(str!));

String? recipeToJson(Response data) => json.encode(data.toJson());

class Response {
  Response({
    this.results,
  });
  List<RecipeModel>? results;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        results: List<RecipeModel>.from(
            json["results"]!.map((x) => RecipeModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class RecipeModel {
  RecipeModel({
    this.show,
    this.thumbnailUrl,
    this.language,
    this.thumbnailAltText,
    this.approvedAt,
    this.description,
    this.recipes,
    this.showId,
    this.buzzId,
    this.name,
    this.updatedAt,
    this.canonicalId,
    this.createdAt,
    this.draftStatus,
    this.keywords,
    this.id,
    this.aspectRatio,
    this.country,
    this.price,
    this.videoAdContent,
    this.seoTitle,
    this.userRatings,
    this.cookTimeMinutes,
    this.brandId,
    this.numServings,
    this.instructions,
    this.servingsNounSingular,
    this.isOneTop,
    this.seoPath,
    this.prepTimeMinutes,
    this.sections,
    this.nutritionVisibility,
    this.brand,
    this.servingsNounPlural,
    this.topics,
    this.totalTimeMinutes,
    this.originalVideoUrl,
    this.nutrition,
    this.yields,
    this.inspiredByUrl,
    this.totalTimeTier,
    this.compilations,
    this.tipsAndRatingsEnabled,
  });

  Show? show;
  String? thumbnailUrl;
  Language? language;
  String? thumbnailAltText;
  int? approvedAt;
  String? description;
  List<RecipeElement>? recipes;
  int? showId;
  dynamic buzzId;
  String? name;
  int? updatedAt;
  String? canonicalId;
  int? createdAt;
  DraftStatus? draftStatus;
  String? keywords;
  int? id;
  ResultAspectRatio? aspectRatio;
  Country? country;
  Price? price;
  String? videoAdContent;
  String? seoTitle;
  UserRatings? userRatings;
  int? cookTimeMinutes;
  int? brandId;
  int? numServings;
  List<Instruction>? instructions;
  String? servingsNounSingular;
  bool? isOneTop;
  dynamic seoPath;
  int? prepTimeMinutes;
  List<Section?>? sections;
  NutritionVisibility? nutritionVisibility;
  Brand? brand;
  String? servingsNounPlural;
  List<Topic>? topics;
  int? totalTimeMinutes;
  String? originalVideoUrl;
  Nutrition? nutrition;
  String? yields;
  dynamic inspiredByUrl;
  TotalTimeTier? totalTimeTier;
  List<dynamic>? compilations;
  bool? tipsAndRatingsEnabled;

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        show: Show.fromJson(json["show"]),
        thumbnailUrl: json["thumbnail_url"],
        language: languageValues.map[json["language"]]!,
        thumbnailAltText: json["thumbnail_alt_text"],
        approvedAt: json["approved_at"],
        description: json["description"],
        recipes: json["recipes"] == null
            ? []
            : List<RecipeElement>.from(
                json["recipes"]!.map((x) => RecipeElement.fromJson(x))),
        showId: json["show_id"],
        buzzId: json["buzz_id"],
        name: json["name"],
        updatedAt: json["updated_at"],
        canonicalId: json["canonical_id"],
        createdAt: json["created_at"],
        // draftStatus: draftStatusValues.map[json["draft_status"]]!,
        keywords: json["keywords"],
        id: json["id"],
        // aspectRatio: resultAspectRatioValues.map[json["aspect_ratio"]]!,
        // country: countryValues.map[json["country"]]!,
        price: json["price"] == null ? null : Price.fromJson(json["price"]),
        videoAdContent: json["video_ad_content"],
        seoTitle: json["seo_title"],
        userRatings: json["user_ratings"] == null
            ? null
            : UserRatings.fromJson(json["user_ratings"]),
        cookTimeMinutes: json["cook_time_minutes"],
        brandId: json["brand_id"],
        numServings: json["num_servings"],
        instructions: json["instructions"] == null
            ? []
            : List<Instruction>.from(
                json["instructions"]!.map((x) => Instruction.fromJson(x))),
        servingsNounSingular: json["servings_noun_singular"],
        isOneTop: json["is_one_top"],
        seoPath: json["seo_path"],
        prepTimeMinutes: json["prep_time_minutes"],
        // sections: json["sections"] == null
        //     ? []
        //     : List<Section>.from(
        //         json["sections"]!.map((x) => Section.fromJson(x))),
        // nutritionVisibility:
        //     nutritionVisibilityValues.map[json["nutrition_visibility"]]!,
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        servingsNounPlural: json["servings_noun_plural"],
        // topics: json["topics"] == null
        //     ? []
        //     : List<Topic>.from(json["topics"]!.map((x) => Topic.fromJson(x))),
        totalTimeMinutes: json["total_time_minutes"],
        originalVideoUrl: json["original_video_url"],
        nutrition: json["nutrition"] == null
            ? null
            : Nutrition.fromJson(json["nutrition"]),
        yields: json["yields"],
        inspiredByUrl: json["inspired_by_url"],
        totalTimeTier: json["total_time_tier"] == null
            ? null
            : TotalTimeTier.fromJson(json["total_time_tier"]),
        // compilations: json["compilations"] == null
        //     ? []
        //     : List<dynamic>.from(json["compilations"]!.map((x) => x)),
        tipsAndRatingsEnabled: json["tips_and_ratings_enabled"],
      );

  Map<String, dynamic> toJson() => {
        "show": show!.toJson(),
        "thumbnail_url": thumbnailUrl,
        "language": languageValues.reverse[language],
        "thumbnail_alt_text": thumbnailAltText,
        "approved_at": approvedAt,
        "description": description,
        "recipes": recipes == null
            ? []
            : List<dynamic>.from(recipes!.map((x) => x.toJson())),
        "show_id": showId,
        "buzz_id": buzzId,
        "name": name,
        "updated_at": updatedAt,
        "canonical_id": canonicalId,
        "created_at": createdAt,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "keywords": keywords,
        "id": id,
        "aspect_ratio": resultAspectRatioValues.reverse[aspectRatio],
        "country": countryValues.reverse[country],
        "price": price?.toJson(),
        "video_ad_content": videoAdContent,
        "seo_title": seoTitle,
        "user_ratings": userRatings?.toJson(),
        "cook_time_minutes": cookTimeMinutes,
        "brand_id": brandId,
        "num_servings": numServings,
        "instructions": instructions == null
            ? []
            : List<dynamic>.from(instructions!.map((x) => x.toJson())),
        "servings_noun_singular": servingsNounSingular,
        "is_one_top": isOneTop,
        "seo_path": seoPath,
        "prep_time_minutes": prepTimeMinutes,
        "sections": sections == null
            ? []
            : List<dynamic>.from(sections!.map((x) => x!.toJson())),
        "nutrition_visibility":
            nutritionVisibilityValues.reverse[nutritionVisibility],
        "brand": brand?.toJson(),
        "servings_noun_plural": servingsNounPlural,
        "topics": topics == null
            ? []
            : List<dynamic>.from(topics!.map((x) => x.toJson())),
        "total_time_minutes": totalTimeMinutes,
        "original_video_url": originalVideoUrl,
        "nutrition": nutrition?.toJson(),
        "yields": yields,
        "inspired_by_url": inspiredByUrl,
        "total_time_tier": totalTimeTier?.toJson(),
        "compilations": compilations == null
            ? []
            : List<dynamic>.from(compilations!.map((x) => x)),
        "tips_and_ratings_enabled": tipsAndRatingsEnabled,
      };
}

enum ResultAspectRatio { THE_11, THE_916, THE_169 }

final resultAspectRatioValues = EnumValues({
  "1:1": ResultAspectRatio.THE_11,
  "16:9": ResultAspectRatio.THE_169,
  "9:16": ResultAspectRatio.THE_916
});

class Brand {
  Brand({
    this.imageUrl,
    this.name,
    this.id,
    this.slug,
    this.type,
  });

  String? imageUrl;
  String? name;
  int? id;
  String? slug;
  BrandType? type;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        imageUrl: json["image_url"],
        name: json["name"],
        id: json["id"],
        slug: json["slug"],
        // type: brandTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "name": name,
        "id": id,
        "slug": slug,
        "type": brandTypeValues.reverse[type],
      };
}

enum BrandType { INTERNAL, BRAND }

final brandTypeValues =
    EnumValues({"brand": BrandType.BRAND, "internal": BrandType.INTERNAL});

enum Country { US, ZZ, GB }

final countryValues =
    EnumValues({"GB": Country.GB, "US": Country.US, "ZZ": Country.ZZ});

enum DraftStatus { PUBLISHED }

final draftStatusValues = EnumValues({"published": DraftStatus.PUBLISHED});

class Instruction {
  Instruction({
    this.endTime,
    this.temperature,
    this.id,
    this.position,
    this.displayText,
    this.startTime,
    // this.appliance,
  });

  int? endTime;
  int? temperature;
  int? id;
  int? position;
  String? displayText;
  int? startTime;
  // Appliance? appliance;

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        endTime: json["end_time"],
        temperature: json["temperature"],
        id: json["id"],
        position: json["position"],
        displayText: json["display_text"],
        startTime: json["start_time"],
        // appliance: applianceValues.map[json["appliance"]]!,
      );

  Map<String, dynamic> toJson() => {
        "end_time": endTime,
        "temperature": temperature,
        "id": id,
        "position": position,
        "display_text": displayText,
        "start_time": startTime,
        // "appliance": applianceValues.reverse[appliance],
      };
}

// enum Appliance { OVEN, FOOD_THERMOMETER, STOVETOP }

// final applianceValues = EnumValues({
//   "food_thermometer": Appliance.FOOD_THERMOMETER,
//   "oven": Appliance.OVEN,
//   "stovetop": Appliance.STOVETOP
// });

enum Language { ENG, UND }

final languageValues = EnumValues({"eng": Language.ENG, "und": Language.UND});

class Nutrition {
  Nutrition({
    this.protein,
    this.fat,
    this.calories,
    this.sugar,
    this.carbohydrates,
    this.fiber,
    this.updatedAt,
  });

  int? protein;
  int? fat;
  int? calories;
  int? sugar;
  int? carbohydrates;
  int? fiber;
  DateTime? updatedAt;

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
        protein: json["protein"],
        fat: json["fat"],
        calories: json["calories"],
        sugar: json["sugar"],
        carbohydrates: json["carbohydrates"],
        fiber: json["fiber"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "protein": protein,
        "fat": fat,
        "calories": calories,
        "sugar": sugar,
        "carbohydrates": carbohydrates,
        "fiber": fiber,
        "updated_at": updatedAt?.toIso8601String(),
      };
}

enum NutritionVisibility { AUTO }

final nutritionVisibilityValues =
    EnumValues({"auto": NutritionVisibility.AUTO});

class Price {
  Price({
    this.total,
    this.updatedAt,
    this.portion,
    this.consumptionTotal,
    this.consumptionPortion,
  });

  int? total;
  DateTime? updatedAt;
  int? portion;
  int? consumptionTotal;
  int? consumptionPortion;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        total: json["total"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        portion: json["portion"],
        consumptionTotal: json["consumption_total"],
        consumptionPortion: json["consumption_portion"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "updated_at": updatedAt?.toIso8601String(),
        "portion": portion,
        "consumption_total": consumptionTotal,
        "consumption_portion": consumptionPortion,
      };
}

enum Promotion { FULL, PARTIAL, NONE }

final promotionValues = EnumValues({
  "full": Promotion.FULL,
  "none": Promotion.NONE,
  "partial": Promotion.PARTIAL
});

class RecipeElement {
  RecipeElement({
    this.createdAt,
    this.thumbnailUrl,
    this.compilations,
    this.prepTimeMinutes,
    this.sections,
    this.tags,
    this.draftStatus,
    this.inspiredByUrl,
    this.thumbnailAltText,
    this.beautyUrl,
    this.nutritionVisibility,
    this.topics,
    this.videoUrl,
    this.updatedAt,
    this.servingsNounPlural,
    this.seoTitle,
    this.userRatings,
    this.name,
    this.description,
    this.videoAdContent,
    this.yields,
    this.canonicalId,
    this.nutrition,
    this.price,
    this.slug,
    this.buzzId,
    this.show,
    this.credits,
    this.isOneTop,
    this.totalTimeTier,
    this.seoPath,
    this.facebookPosts,
    this.recipeId,
    this.showId,
    this.numServings,
    this.isShoppable,
    this.promotion,
    this.videoId,
    this.country,
    this.language,
    this.originalVideoUrl,
    this.instructions,
    this.brand,
    this.servingsNounSingular,
    this.brandId,
    this.tipsAndRatingsEnabled,
    this.aspectRatio,
    this.totalTimeMinutes,
    this.approvedAt,
    this.keywords,
    this.cookTimeMinutes,
    //  this.renditions,
    this.id,
    this.type,
    // this.index,
    this.opType,
  });

  int? createdAt;
  String? thumbnailUrl;
  List<Compilation>? compilations;
  int? prepTimeMinutes;
  List<Section>? sections;
  List<Tag>? tags;
  DraftStatus? draftStatus;
  String? inspiredByUrl;
  String? thumbnailAltText;
  String? beautyUrl;
  NutritionVisibility? nutritionVisibility;
  List<Topic>? topics;
  String? videoUrl;
  int? updatedAt;
  String? servingsNounPlural;
  String? seoTitle;
  UserRatings? userRatings;
  String? name;
  String? description;
  VideoAdContent? videoAdContent;
  String? yields;
  String? canonicalId;
  Nutrition? nutrition;
  Price? price;
  String? slug;
  int? buzzId;
  Show? show;
  List<Credit>? credits;
  bool? isOneTop;
  TotalTimeTier? totalTimeTier;
  dynamic seoPath;
  List<dynamic>? facebookPosts;
  int? recipeId;
  int? showId;
  int? numServings;
  bool? isShoppable;
  Promotion? promotion;
  int? videoId;
  Country? country;
  Language? language;
  String? originalVideoUrl;
  List<Instruction>? instructions;
  dynamic brand;
  String? servingsNounSingular;
  dynamic brandId;
  bool? tipsAndRatingsEnabled;
  ResultAspectRatio? aspectRatio;
  int? totalTimeMinutes;
  int? approvedAt;
  String? keywords;
  int? cookTimeMinutes;
  // List<Rendition> renditions;
  int? id;
  Type? type;
  // Index? index;
  OpType? opType;

  factory RecipeElement.fromJson(Map<String, dynamic> json) => RecipeElement(
        createdAt: json["created_at"],
        thumbnailUrl: json["thumbnail_url"],
        compilations: List<Compilation>.from(
            json["compilations"].map((x) => Compilation.fromJson(x))),
        prepTimeMinutes: json["prep_time_minutes"],
        sections: List<Section>.from(
            json["sections"].map((x) => Section.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        inspiredByUrl: json["inspired_by_url"],
        thumbnailAltText: json["thumbnail_alt_text"],
        beautyUrl: json["beauty_url"],
        nutritionVisibility:
            nutritionVisibilityValues.map[json["nutrition_visibility"]]!,
        topics: List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
        videoUrl: json["video_url"],
        updatedAt: json["updated_at"],
        servingsNounPlural: json["servings_noun_plural"],
        seoTitle: json["seo_title"],
        userRatings: UserRatings.fromJson(json["user_ratings"]),
        name: json["name"],
        description: json["description"],
        // videoAdContent: videoAdContentValues.map[json["video_ad_content"]]!,
        yields: json["yields"],
        canonicalId: json["canonical_id"],
        nutrition: Nutrition.fromJson(json["nutrition"]),
        price: Price.fromJson(json["price"]),
        slug: json["slug"],
        buzzId: json["buzz_id"],
        show: Show.fromJson(json["show"]),
        credits:
            List<Credit>.from(json["credits"].map((x) => Credit.fromJson(x))),
        isOneTop: json["is_one_top"],
        totalTimeTier: json["total_time_tier"] == null
            ? null
            : TotalTimeTier.fromJson(json["total_time_tier"]),
        seoPath: json["seo_path"],
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        recipeId: json["id"],
        showId: json["show_id"],
        numServings: json["num_servings"],
        isShoppable: json["is_shoppable"],
        promotion: promotionValues.map[json["promotion"]]!,
        videoId: json["video_id"],
        country: countryValues.map[json["country"]]!,
        language: languageValues.map[json["language"]]!,
        originalVideoUrl: json["original_video_url"],
        instructions: List<Instruction>.from(
            json["instructions"].map((x) => Instruction.fromJson(x))),
        brand: json["brand"],
        servingsNounSingular: json["servings_noun_singular"],
        brandId: json["brand_id"],
        tipsAndRatingsEnabled: json["tips_and_ratings_enabled"],
        aspectRatio: resultAspectRatioValues.map[json["aspect_ratio"]]!,
        totalTimeMinutes: json["total_time_minutes"],
        approvedAt: json["approved_at"],
        keywords: json["keywords"],
        cookTimeMinutes: json["cook_time_minutes"],
        id: json["_id"],
        // type: typeValues.map[json["_type"]]!,
        // index: indexValues.map[json["_index"]]!,
        // opType: opTypeValues.map[json["_op_type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "created_at": createdAt,
        "thumbnail_url": thumbnailUrl,
        "compilations":
            List<dynamic>.from(compilations!.map((x) => x.toJson())),
        "prep_time_minutes": prepTimeMinutes,
        "sections": List<dynamic>.from(sections!.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags!.map((x) => x.toJson())),
        "draft_status": draftStatusValues.reverse[draftStatus],
        "inspired_by_url": inspiredByUrl,
        "thumbnail_alt_text": thumbnailAltText,
        "beauty_url": beautyUrl,
        "nutrition_visibility":
            nutritionVisibilityValues.reverse[nutritionVisibility],
        "topics": List<dynamic>.from(topics!.map((x) => x.toJson())),
        "video_url": videoUrl,
        "updated_at": updatedAt,
        "servings_noun_plural": servingsNounPlural,
        "seo_title": seoTitle,
        "user_ratings": userRatings!.toJson(),
        "name": name,
        "description": description,
        "video_ad_content": videoAdContentValues.reverse[videoAdContent],
        "yields": yields,
        "canonical_id": canonicalId,
        "nutrition": nutrition!.toJson(),
        "price": price!.toJson(),
        "slug": slug,
        "buzz_id": buzzId,
        "show": show!.toJson(),
        "credits": List<dynamic>.from(credits!.map((x) => x.toJson())),
        "is_one_top": isOneTop,
        "total_time_tier": totalTimeTier?.toJson(),
        "seo_path": seoPath,
        "facebook_posts": List<dynamic>.from(facebookPosts!.map((x) => x)),
        "id": recipeId,
        "show_id": showId,
        "num_servings": numServings,
        "is_shoppable": isShoppable,
        "promotion": promotionValues.reverse[promotion],
        "video_id": videoId,
        "country": countryValues.reverse[country],
        "language": languageValues.reverse[language],
        "original_video_url": originalVideoUrl,
        "instructions":
            List<dynamic>.from(instructions!.map((x) => x.toJson())),
        "brand": brand,
        "servings_noun_singular": servingsNounSingular,
        "brand_id": brandId,
        "tips_and_ratings_enabled": tipsAndRatingsEnabled,
        "aspect_ratio": resultAspectRatioValues.reverse[aspectRatio],
        "total_time_minutes": totalTimeMinutes,
        "approved_at": approvedAt,
        "keywords": keywords,
        "cook_time_minutes": cookTimeMinutes,
        "_id": id,
        // "_type": typeValues.reverse[type],
        // "_index": indexValues.reverse[index],
        "_op_type": opTypeValues.reverse[opType],
      };
}

class Compilation {
  Compilation({
    this.description,
    this.name,
    this.id,
    this.buzzId,
    this.createdAt,
    this.show,
    this.beautyUrl,
    this.isShoppable,
    this.language,
    this.thumbnailUrl,
    this.videoUrl,
    this.approvedAt,
    this.promotion,
    this.videoId,
    // this.aspectRatio,
    this.keywords,
    this.facebookPosts,
    this.draftStatus,
    this.thumbnailAltText,
    this.canonicalId,
    this.slug,
    this.country,
  });

  String? description;
  String? name;
  int? id;
  int? buzzId;
  int? createdAt;
  List<Show>? show;
  String? beautyUrl;
  bool? isShoppable;
  Language? language;
  String? thumbnailUrl;
  String? videoUrl;
  int? approvedAt;
  Promotion? promotion;
  int? videoId;
  // CompilationAspectRatio? aspectRatio;
  dynamic keywords;
  List<dynamic>? facebookPosts;
  DraftStatus? draftStatus;
  ThumbnailAltText? thumbnailAltText;
  String? canonicalId;
  String? slug;
  Country? country;

  factory Compilation.fromJson(Map<String, dynamic> json) => Compilation(
        description: json["description"],
        name: json["name"],
        id: json["id"],
        buzzId: json["buzz_id"],
        createdAt: json["created_at"],
        show: List<Show>.from(json["show"].map((x) => Show.fromJson(x))),
        beautyUrl: json["beauty_url"],
        isShoppable: json["is_shoppable"],
        language: languageValues.map[json["language"]]!,
        thumbnailUrl: json["thumbnail_url"],
        videoUrl: json["video_url"],
        approvedAt: json["approved_at"],
        promotion: promotionValues.map[json["promotion"]]!,
        videoId: json["video_id"],
        // aspectRatio: compilationAspectRatioValues.map[json["aspect_ratio"]]!,
        keywords: json["keywords"],
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        // thumbnailAltText:
        //     thumbnailAltTextValues.map[json["thumbnail_alt_text"]]!,
        canonicalId: json["canonical_id"],
        slug: json["slug"],
        country: countryValues.map[json["country"]]!,
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "name": name,
        "id": id,
        "buzz_id": buzzId,
        "created_at": createdAt,
        "show": List<dynamic>.from(show!.map((x) => x.toJson())),
        "beauty_url": beautyUrl,
        "is_shoppable": isShoppable,
        "language": languageValues.reverse[language],
        "thumbnail_url": thumbnailUrl,
        "video_url": videoUrl,
        "approved_at": approvedAt,
        "promotion": promotionValues.reverse[promotion],
        "video_id": videoId,
        // "aspect_ratio": compilationAspectRatioValues.reverse[aspectRatio],
        "keywords": keywords,
        "facebook_posts": List<dynamic>.from(facebookPosts!.map((x) => x)),
        "draft_status": draftStatusValues.reverse[draftStatus],
        "thumbnail_alt_text": thumbnailAltTextValues.reverse[thumbnailAltText],
        "canonical_id": canonicalId,
        "slug": slug,
        "country": countryValues.reverse[country],
      };
}

// enum CompilationAspectRatio { THE_11, THE_45, THE_169 }
//
// final compilationAspectRatioValues = EnumValues({
//   "1:1": CompilationAspectRatio.THE_11,
//   "16:9": CompilationAspectRatio.THE_169,
//   "4:5": CompilationAspectRatio.THE_45
// });

class Show {
  Show({
    this.name,
    this.id,
  });

  ShowName? name;
  int? id;

  factory Show.fromJson(Map<String, dynamic> json) => Show(
        // name: showNameValues.map[json["name"]]!,
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": showNameValues.reverse[name],
        "id": id,
      };
}

enum ShowName {
  TASTY,
  GOODFUL,
  TASTY_TASTY_JUNIOR,
  TASTY_TASTY_VEGETARIAN,
  BEHIND_TASTY,
  TASTY_INTERNATIONAL_PROPER_TASTY,
  TASTY_TASTY_GRILL
}

final showNameValues = EnumValues({
  "Behind Tasty": ShowName.BEHIND_TASTY,
  "Goodful": ShowName.GOODFUL,
  "Tasty": ShowName.TASTY,
  "Tasty International: Proper Tasty":
      ShowName.TASTY_INTERNATIONAL_PROPER_TASTY,
  "Tasty: Tasty Grill": ShowName.TASTY_TASTY_GRILL,
  "Tasty: Tasty Junior": ShowName.TASTY_TASTY_JUNIOR,
  "Tasty: Tasty Vegetarian": ShowName.TASTY_TASTY_VEGETARIAN
});

enum ThumbnailAltText {
  EMPTY,
  CARAMEL_RECIPES_FOR_THE_FALL,
  APPLE_PIE_RECIPES_FOR_THE_FALL,
  PANCAKE_VS_WAFFLES,
  CHIA_SEED,
  BERRY_LICIOUS_SNACKS,
  GARLIC_FOR_THE_WIN,
  HAM_RECIPES_FOR_WHEN_YOU_RE_BORED,
  THE_7_DAYS_7_BITE_SIZE_SNACKS,
  HEALTHY_RECIPES_FOR_FESTIVE_SEASON,
  TASTY_FOOD_FOR_EVERY_MOOD,
  QUICK_SNACKS_TO_MAKE_FOR_THE_NEXT_ROAD_TRIP,
  NEW_YEAR_FINGER_FOODS,
  COZY_RECIPES,
  ALL_YOU_NEED_IS_A_MUG,
  FALL_DRINKS
}

final thumbnailAltTextValues = EnumValues({
  "All you need is a Mug!": ThumbnailAltText.ALL_YOU_NEED_IS_A_MUG,
  "Apple Pie Recipes For The Fall":
      ThumbnailAltText.APPLE_PIE_RECIPES_FOR_THE_FALL,
  "Berry-licious Snacks": ThumbnailAltText.BERRY_LICIOUS_SNACKS,
  "Caramel Recipes For The Fall": ThumbnailAltText.CARAMEL_RECIPES_FOR_THE_FALL,
  "Chia Seed": ThumbnailAltText.CHIA_SEED,
  "Cozy Recipes": ThumbnailAltText.COZY_RECIPES,
  "": ThumbnailAltText.EMPTY,
  "Fall Drinks": ThumbnailAltText.FALL_DRINKS,
  "GARLIC FOR THE WIN": ThumbnailAltText.GARLIC_FOR_THE_WIN,
  "Ham Recipes For When You're Bored":
      ThumbnailAltText.HAM_RECIPES_FOR_WHEN_YOU_RE_BORED,
  "Healthy Recipes For Festive Season":
      ThumbnailAltText.HEALTHY_RECIPES_FOR_FESTIVE_SEASON,
  "New Year Finger Foods": ThumbnailAltText.NEW_YEAR_FINGER_FOODS,
  "PANCAKE VS WAFFLES": ThumbnailAltText.PANCAKE_VS_WAFFLES,
  "Quick Snacks To Make For The Next Road Trip":
      ThumbnailAltText.QUICK_SNACKS_TO_MAKE_FOR_THE_NEXT_ROAD_TRIP,
  "Tasty Food For Every Mood": ThumbnailAltText.TASTY_FOOD_FOR_EVERY_MOOD,
  "7 Days 7 Bite-size Snacks": ThumbnailAltText.THE_7_DAYS_7_BITE_SIZE_SNACKS
});

class Credit {
  Credit({
    this.name,
    this.type,
  });

  String? name;
  BrandType? type;

  factory Credit.fromJson(Map<String, dynamic> json) => Credit(
        name: json["name"],
        type: brandTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": brandTypeValues.reverse[type],
      };
}

// enum Index { RECIPES_20230405211806 }
//
// final indexValues =
//     EnumValues({"recipes-20230405211806": Index.RECIPES_20230405211806});

enum OpType { INDEX }

final opTypeValues = EnumValues({"index": OpType.INDEX});

enum Aspect { SQUARE, PORTRAIT }

final aspectValues =
    EnumValues({"portrait": Aspect.PORTRAIT, "square": Aspect.SQUARE});

enum ContainerEnum { MP4, TS }

final containerValues =
    EnumValues({"mp4": ContainerEnum.MP4, "ts": ContainerEnum.TS});

enum ContentType { VIDEO_MP4, APPLICATION_VND_APPLE_MPEGURL }

final contentTypeValues = EnumValues({
  "application/vnd.apple.mpegurl": ContentType.APPLICATION_VND_APPLE_MPEGURL,
  "video/mp4": ContentType.VIDEO_MP4
});

enum RenditionName {
  MP4_720_X720,
  LOW,
  MP4_640_X640,
  MP4_320_X320,
  MP4_480_X480,
  MP4_404_X720,
  MP4_180_X320,
  MP4_270_X480
}

final renditionNameValues = EnumValues({
  "low": RenditionName.LOW,
  "mp4_180x320": RenditionName.MP4_180_X320,
  "mp4_270x480": RenditionName.MP4_270_X480,
  "mp4_320x320": RenditionName.MP4_320_X320,
  "mp4_404x720": RenditionName.MP4_404_X720,
  "mp4_480x480": RenditionName.MP4_480_X480,
  "mp4_640x640": RenditionName.MP4_640_X640,
  "mp4_720x720": RenditionName.MP4_720_X720
});

class Section {
  Section({
    this.position,
    this.components,
    this.name,
  });

  int? position;
  List<Component>? components;
  String? name;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        position: json["position"],
        components: List<Component>.from(
            json["components"].map((x) => Component.fromJson(x))),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "position": position,
        "components": List<dynamic>.from(components!.map((x) => x.toJson())),
        "name": name,
      };
}

class Component {
  Component({
    this.rawText,
    this.extraComment,
    this.ingredient,
    this.id,
    this.position,
    this.measurements,
    this.linkedRecipe,
  });

  String? rawText;
  String? extraComment;
  Ingredient? ingredient;
  int? id;
  int? position;
  List<Measurement>? measurements;
  LinkedRecipe? linkedRecipe;

  factory Component.fromJson(Map<String, dynamic> json) => Component(
        rawText: json["raw_text"],
        extraComment: json["extra_comment"],
        ingredient: Ingredient.fromJson(json["ingredient"]),
        id: json["id"],
        position: json["position"],
        measurements: List<Measurement>.from(
            json["measurements"].map((x) => Measurement.fromJson(x))),
        linkedRecipe: json["linked_recipe"] == null
            ? null
            : LinkedRecipe.fromJson(json["linked_recipe"]),
      );

  Map<String, dynamic> toJson() => {
        "raw_text": rawText,
        "extra_comment": extraComment,
        "ingredient": ingredient!.toJson(),
        "id": id,
        "position": position,
        "measurements":
            List<dynamic>.from(measurements!.map((x) => x.toJson())),
        "linked_recipe": linkedRecipe?.toJson(),
      };
}

class Ingredient {
  Ingredient({
    this.updatedAt,
    this.name,
    this.createdAt,
    this.displayPlural,
    this.id,
    this.displaySingular,
  });

  int? updatedAt;
  String? name;
  int? createdAt;
  String? displayPlural;
  int? id;
  String? displaySingular;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        updatedAt: json["updated_at"],
        name: json["name"],
        createdAt: json["created_at"],
        displayPlural: json["display_plural"],
        id: json["id"],
        displaySingular: json["display_singular"],
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt,
        "name": name,
        "created_at": createdAt,
        "display_plural": displayPlural,
        "id": id,
        "display_singular": displaySingular,
      };
}

class LinkedRecipe {
  LinkedRecipe({
    this.name,
    this.id,
    this.thumbnailUrl,
    this.slug,
    this.approvedAt,
  });

  String? name;
  int? id;
  String? thumbnailUrl;
  String? slug;
  int? approvedAt;

  factory LinkedRecipe.fromJson(Map<String, dynamic> json) => LinkedRecipe(
        name: json["name"],
        id: json["id"],
        thumbnailUrl: json["thumbnail_url"],
        slug: json["slug"],
        approvedAt: json["approved_at"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "thumbnail_url": thumbnailUrl,
        "slug": slug,
        "approved_at": approvedAt,
      };
}

class Measurement {
  Measurement({
    this.quantity,
    this.id,
  });

  String? quantity;
  int? id;

  factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
        quantity: json["quantity"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "id": id,
      };
}

enum Abbreviation {
  EMPTY,
  C,
  G,
  TSP,
  M_L,
  TBSP,
  OZ,
  HEAD,
  PIECE,
  BUNCH,
  CLOVE,
  LB,
  KG,
  STRIP,
  L,
  STICK,
  PINCH,
  SPRIG,
  LARGE_HEAD,
  CUBE,
  PACKET,
  CAN,
  SLICE,
  BAG,
  SHEET,
  HALF_EAR,
  ONION,
  BLOCK,
  PACKAGE,
  EGG,
  CUP,
  TEASPOON,
  TABLESPOON,
  GRAM,
  MILLILITER,
  OUNCE,
  POUND,
  KILOGRAM,
  LITER
}

final abbreviationValues = EnumValues({
  "bag": Abbreviation.BAG,
  "block": Abbreviation.BLOCK,
  "bunch": Abbreviation.BUNCH,
  "c": Abbreviation.C,
  "can": Abbreviation.CAN,
  "clove": Abbreviation.CLOVE,
  "cube": Abbreviation.CUBE,
  "cup": Abbreviation.CUP,
  "egg": Abbreviation.EGG,
  "": Abbreviation.EMPTY,
  "g": Abbreviation.G,
  "gram": Abbreviation.GRAM,
  "half ear": Abbreviation.HALF_EAR,
  "head": Abbreviation.HEAD,
  "kg": Abbreviation.KG,
  "kilogram": Abbreviation.KILOGRAM,
  "L": Abbreviation.L,
  "large head": Abbreviation.LARGE_HEAD,
  "lb": Abbreviation.LB,
  "liter": Abbreviation.LITER,
  "milliliter": Abbreviation.MILLILITER,
  "mL": Abbreviation.M_L,
  "onion": Abbreviation.ONION,
  "ounce": Abbreviation.OUNCE,
  "oz": Abbreviation.OZ,
  "package": Abbreviation.PACKAGE,
  "packet": Abbreviation.PACKET,
  "piece": Abbreviation.PIECE,
  "pinch": Abbreviation.PINCH,
  "pound": Abbreviation.POUND,
  "sheet": Abbreviation.SHEET,
  "slice": Abbreviation.SLICE,
  "sprig": Abbreviation.SPRIG,
  "stick": Abbreviation.STICK,
  "strip": Abbreviation.STRIP,
  "tablespoon": Abbreviation.TABLESPOON,
  "tbsp": Abbreviation.TBSP,
  "teaspoon": Abbreviation.TEASPOON,
  "tsp": Abbreviation.TSP
});

enum DisplayPlural {
  EMPTY,
  CUPS,
  G,
  TEASPOONS,
  M_L,
  TABLESPOONS,
  OZ,
  HEADS,
  PIECES,
  BUNCHES,
  CLOVES,
  LB,
  KG,
  STRIPS,
  L,
  STICKS,
  PINCHES,
  SPRIGS,
  LARGE_HEADS,
  CUBES,
  PACKETS,
  CANS,
  SLICES,
  BAGS,
  SHEETS,
  HALF_EARS,
  ONIONS,
  BLOCKS,
  PACKAGES,
  EGGS
}

final displayPluralValues = EnumValues({
  "bags": DisplayPlural.BAGS,
  "blocks": DisplayPlural.BLOCKS,
  "bunches": DisplayPlural.BUNCHES,
  "cans": DisplayPlural.CANS,
  "cloves": DisplayPlural.CLOVES,
  "cubes": DisplayPlural.CUBES,
  "cups": DisplayPlural.CUPS,
  "eggs": DisplayPlural.EGGS,
  "": DisplayPlural.EMPTY,
  "g": DisplayPlural.G,
  "half ears": DisplayPlural.HALF_EARS,
  "heads": DisplayPlural.HEADS,
  "kg": DisplayPlural.KG,
  "L": DisplayPlural.L,
  "large heads": DisplayPlural.LARGE_HEADS,
  "lb": DisplayPlural.LB,
  "mL": DisplayPlural.M_L,
  "onions": DisplayPlural.ONIONS,
  "oz": DisplayPlural.OZ,
  "packages": DisplayPlural.PACKAGES,
  "packets": DisplayPlural.PACKETS,
  "pieces": DisplayPlural.PIECES,
  "pinches": DisplayPlural.PINCHES,
  "sheets": DisplayPlural.SHEETS,
  "slices": DisplayPlural.SLICES,
  "sprigs": DisplayPlural.SPRIGS,
  "sticks": DisplayPlural.STICKS,
  "strips": DisplayPlural.STRIPS,
  "tablespoons": DisplayPlural.TABLESPOONS,
  "teaspoons": DisplayPlural.TEASPOONS
});

enum System { NONE, IMPERIAL, METRIC }

final systemValues = EnumValues({
  "imperial": System.IMPERIAL,
  "metric": System.METRIC,
  "none": System.NONE
});

class Tag {
  Tag({
    this.name,
    this.id,
    this.displayName,
    this.type,
  });

  String? name;
  int? id;
  String? displayName;
  TagType? type;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        id: json["id"],
        displayName: json["display_name"],
        type: tagTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "display_name": displayName,
        "type": tagTypeValues.reverse[type],
      };
}

enum TagType {
  APPLIANCE,
  HOLIDAY,
  CUISINE,
  MEAL,
  COOKING_STYLE,
  SEASONAL,
  OCCASION,
  EQUIPMENT,
  HEALTHY,
  FEATURE_PAGE,
  DIFFICULTY,
  DIETARY,
  BUSINESS_TAGS
}

final tagTypeValues = EnumValues({
  "appliance": TagType.APPLIANCE,
  "business_tags": TagType.BUSINESS_TAGS,
  "cooking_style": TagType.COOKING_STYLE,
  "cuisine": TagType.CUISINE,
  "dietary": TagType.DIETARY,
  "difficulty": TagType.DIFFICULTY,
  "equipment": TagType.EQUIPMENT,
  "feature_page": TagType.FEATURE_PAGE,
  "healthy": TagType.HEALTHY,
  "holiday": TagType.HOLIDAY,
  "meal": TagType.MEAL,
  "occasion": TagType.OCCASION,
  "seasonal": TagType.SEASONAL
});

class Topic {
  Topic({
    this.slug,
    this.name,
  });

  String? slug;
  String? name;

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        slug: json["slug"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "name": name,
      };
}

class TotalTimeTier {
  TotalTimeTier({
    this.tier,
    this.displayTier,
  });

  String? tier;
  String? displayTier;

  factory TotalTimeTier.fromJson(Map<String, dynamic> json) => TotalTimeTier(
        tier: json["tier"],
        displayTier: json["display_tier"],
      );

  Map<String, dynamic> toJson() => {
        "tier": tier,
        "display_tier": displayTier,
      };
}
//
// enum Type { RECIPE }
//
// final typeValues = EnumValues({"recipe": Type.RECIPE});

class UserRatings {
  UserRatings({
    this.countPositive,
    this.score,
    this.countNegative,
  });

  int? countPositive;
  double? score;
  int? countNegative;

  factory UserRatings.fromJson(Map<String, dynamic> json) => UserRatings(
        countPositive: json["count_positive"],
        score: json["score"]?.toDouble(),
        countNegative: json["count_negative"],
      );

  Map<String, dynamic> toJson() => {
        "count_positive": countPositive,
        "score": score,
        "count_negative": countNegative,
      };
}

enum VideoAdContent { NONE, UNDETERMINED, EDITORIAL_SPONSORSHIP }

final videoAdContentValues = EnumValues({
  "editorial_sponsorship": VideoAdContent.EDITORIAL_SPONSORSHIP,
  "none": VideoAdContent.NONE,
  "undetermined": VideoAdContent.UNDETERMINED
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
