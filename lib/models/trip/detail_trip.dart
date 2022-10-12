class DetailTrip {
  DetailTrip({
    required this.id,
    required this.insuranceId,
    required this.seasonId,
    required this.siteId,
    required this.visaProviderId,
    this.muassasahId,
    required this.availableSeats,
    required this.category,
    required this.channel,
    required this.closeAt,
    required this.createdAt,
    required this.currency,
    required this.days,
    required this.departureAt,
    required this.departureFrom,
    required this.description,
    required this.hotelStar,
    required this.insurance,
    required this.metaDescription,
    required this.metaKeywords,
    required this.metaTitle,
    required this.invoiceDueAt,
    required this.minimumDownPayment,
    required this.minimumPartialPayment,
    required this.name,
    required this.pict,
    required this.priceStart,
    required this.season,
    required this.siskopatuhReady,
    required this.slug,
    required this.status,
    required this.totalBooking,
    required this.totalPax,
    required this.totalListener,
    required this.updatedAt,
    required this.buses,
    required this.flights,
    required this.hotels,
    required this.itineraries,
    required this.variants,
    required this.tags,
    required this.addons,
    required this.nocache,
  });
  late final int? id;
  late final int? insuranceId;
  late final int? seasonId;
  late final int? siteId;
  late final int? visaProviderId;
  late final int? muassasahId;
  late final int? availableSeats;
  late final String? category;
  late final String? channel;
  late final String? closeAt;
  late final String? createdAt;
  late final String? currency;
  late final int? days;
  late final String? departureAt;
  late final String? departureFrom;
  late final String? description;
  late final int? hotelStar;
  late final Insurance? insurance;
  late final String? metaDescription;
  late final String? metaKeywords;
  late final String? metaTitle;
  late final String? invoiceDueAt;
  late final String? minimumDownPayment;
  late final String? minimumPartialPayment;
  late final String? name;
  late final Pict? pict;
  late final int? priceStart;
  late final Season? season;
  late final bool? siskopatuhReady;
  late final String? slug;
  late final String? status;
  late final int? totalBooking;
  late final int? totalPax;
  late final int? totalListener;
  late final String? updatedAt;
  late final List<Buses> buses;
  late final List<Flights> flights;
  late final List<Hotels> hotels;
  late final List<Itineraries> itineraries;
  late final List<Variants> variants;
  late final List<Tags> tags;
  late final List<Addons> addons;
  late final bool nocache;

  DetailTrip.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    insuranceId = json['insurance_id'];
    seasonId = json['season_id'];
    siteId = json['site_id'];
    visaProviderId = json['visa_provider_id'];
    muassasahId = json['muassasah_id'];
    availableSeats = json['available_seats'];
    category = json['category'];
    channel = json['channel'];
    closeAt = json['close_at'];
    createdAt = json['created_at'];
    currency = json['currency'];
    days = json['days'];
    departureAt = json['departure_at'];
    departureFrom = json['departure_from'];
    description = json['description'];
    hotelStar = json['hotel_star'];
    insurance = json['insurance'] == null
        ? null
        : Insurance.fromJson(json['insurance']);
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
    metaTitle = json['meta_title'];
    invoiceDueAt = json['invoice_due_at'];
    minimumDownPayment = json['minimum_down_payment'];
    minimumPartialPayment = json['minimum_partial_payment'];
    name = json['name'];
    pict = Pict.fromJson(json['pict']);
    priceStart = json['price_start'];
    season = Season.fromJson(json['season']);
    siskopatuhReady = json['siskopatuh_ready'];
    slug = json['slug'];
    status = json['status'];
    totalBooking = json['total_booking'];
    totalPax = json['total_pax'];
    totalListener = json['total_listener'];
    updatedAt = json['updated_at'];
    buses = List.from(json['buses']).map((e) => Buses.fromJson(e)).toList();
    flights =
        List.from(json['flights']).map((e) => Flights.fromJson(e)).toList();
    hotels = List.from(json['hotels']).map((e) => Hotels.fromJson(e)).toList();
    itineraries = List.from(json['itineraries'])
        .map((e) => Itineraries.fromJson(e))
        .toList();
    variants =
        List.from(json['variants']).map((e) => Variants.fromJson(e)).toList();
    tags = List.from(json['tags']).map((e) => Tags.fromJson(e)).toList();
    addons = List.from(json['addons']).map((e) => Addons.fromJson(e)).toList();
    nocache = json['nocache'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['insurance_id'] = insuranceId;
    _data['season_id'] = seasonId;
    _data['site_id'] = siteId;
    _data['visa_provider_id'] = visaProviderId;
    _data['muassasah_id'] = muassasahId;
    _data['available_seats'] = availableSeats;
    _data['category'] = category;
    _data['channel'] = channel;
    _data['close_at'] = closeAt;
    _data['created_at'] = createdAt;
    _data['currency'] = currency;
    _data['days'] = days;
    _data['departure_at'] = departureAt;
    _data['departure_from'] = departureFrom;
    _data['description'] = description;
    _data['hotel_star'] = hotelStar;
    _data['insurance'] = insurance!.toJson();
    _data['meta_description'] = metaDescription;
    _data['meta_keywords'] = metaKeywords;
    _data['meta_title'] = metaTitle;
    _data['invoice_due_at'] = invoiceDueAt;
    _data['minimum_down_payment'] = minimumDownPayment;
    _data['minimum_partial_payment'] = minimumPartialPayment;
    _data['name'] = name;
    _data['pict'] = pict!.toJson();
    _data['price_start'] = priceStart;
    _data['season'] = season!.toJson();
    _data['siskopatuh_ready'] = siskopatuhReady;
    _data['slug'] = slug;
    _data['status'] = status;
    _data['total_booking'] = totalBooking;
    _data['total_pax'] = totalPax;
    _data['total_listener'] = totalListener;
    _data['updated_at'] = updatedAt;
    _data['buses'] = buses.map((e) => e.toJson()).toList();
    _data['flights'] = flights.map((e) => e.toJson()).toList();
    _data['hotels'] = hotels.map((e) => e.toJson()).toList();
    _data['itineraries'] = itineraries.map((e) => e.toJson()).toList();
    _data['variants'] = variants.map((e) => e.toJson()).toList();
    _data['tags'] = tags.map((e) => e.toJson()).toList();
    _data['addons'] = addons.map((e) => e.toJson()).toList();
    _data['nocache'] = nocache;
    return _data;
  }
}

class Insurance {
  Insurance({
    required this.id,
    required this.siskopatuhId,
    required this.name,
  });
  late final int id;
  late final int siskopatuhId;
  late final String name;

  Insurance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    siskopatuhId = json['siskopatuh_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['siskopatuh_id'] = siskopatuhId;
    _data['name'] = name;
    return _data;
  }
}

class Pict {
  Pict({
    required this.url,
    required this.medium,
    required this.small,
  });
  late final String url;
  late final Medium medium;
  late final Small small;

  Pict.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    medium = Medium.fromJson(json['medium']);
    small = Small.fromJson(json['small']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['medium'] = medium.toJson();
    _data['small'] = small.toJson();
    return _data;
  }
}

class Medium {
  Medium({
    required this.url,
  });
  late final String url;

  Medium.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    return _data;
  }
}

class Small {
  Small({
    required this.url,
  });
  late final String url;

  Small.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    return _data;
  }
}

class Season {
  Season({
    required this.id,
    this.siteId,
    required this.slug,
    this.totalPax,
    required this.active,
    required this.name,
    required this.startAt,
    required this.stopAt,
    required this.createdAt,
    required this.updatedAt,
    required this.hijri,
  });
  late final int? id;
  late final int? siteId;
  late final String? slug;
  late final int? totalPax;
  late final bool? active;
  late final String? name;
  late final String? startAt;
  late final String? stopAt;
  late final String? createdAt;
  late final String? updatedAt;
  late final int? hijri;

  Season.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    siteId = json['site_id'];
    slug = json['slug'];
    totalPax = json['total_pax'];
    active = json['active'];
    name = json['name'];
    startAt = json['start_at'];
    stopAt = json['stop_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    hijri = json['hijri'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['site_id'] = siteId;
    _data['slug'] = slug;
    _data['total_pax'] = totalPax;
    _data['active'] = active;
    _data['name'] = name;
    _data['start_at'] = startAt;
    _data['stop_at'] = stopAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['hijri'] = hijri;
    return _data;
  }
}

class Buses {
  Buses({
    required this.listingsBusId,
    required this.listingsBusSlug,
    required this.id,
    required this.slug,
    required this.bus,
    required this.transport,
    required this.logo,
  });
  late final int? listingsBusId;
  late final String? listingsBusSlug;
  late final int? id;
  late final String? slug;
  late final String? bus;
  late final String? transport;
  late final Logo? logo;

  Buses.fromJson(Map<String, dynamic> json) {
    listingsBusId = json['listings_bus_id'];
    listingsBusSlug = json['listings_bus_slug'];
    id = json['id'];
    slug = json['slug'];
    bus = json['bus'];
    transport = json['transport'];
    logo = Logo.fromJson(json['logo']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['listings_bus_id'] = listingsBusId;
    _data['listings_bus_slug'] = listingsBusSlug;
    _data['id'] = id;
    _data['slug'] = slug;
    _data['bus'] = bus;
    _data['transport'] = transport;
    _data['logo'] = logo!.toJson();
    return _data;
  }
}

class Logo {
  Logo({
    required this.url,
    required this.medium,
    required this.small,
  });
  late final String url;
  late final Medium medium;
  late final Small small;

  Logo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    medium = Medium.fromJson(json['medium']);
    small = Small.fromJson(json['small']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['medium'] = medium.toJson();
    _data['small'] = small.toJson();
    return _data;
  }
}

class Flights {
  Flights({
    required this.airline,
    required this.from,
    required this.to,
    required this.terminal,
    this.gate,
    required this.boardingAt,
    this.klass,
    required this.etdAt,
    required this.etaAt,
    required this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
    required this.id,
    this.directionType,
    this.flightType,
  });
  late final Airline? airline;
  late final From? from;
  late final To? to;
  late final String? terminal;
  late final String? gate;
  late final String? boardingAt;
  late final String? klass;
  late final String? etdAt;
  late final String? etaAt;
  late final String? code;
  late final String? createdAt;
  late final String? updatedAt;
  late final String? slug;
  late final int? id;
  late final String? directionType;
  late final String? flightType;

  Flights.fromJson(Map<String, dynamic> json) {
    airline = Airline.fromJson(json['airline']);
    from = From.fromJson(json['from']);
    to = To.fromJson(json['to']);
    terminal = json['terminal'];
    gate = json['gate'];
    boardingAt = json['boarding_at'];
    klass = json['klass'];
    etdAt = json['etd_at'];
    etaAt = json['eta_at'];
    code = json['code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    slug = json['slug'];
    id = json['id'];
    directionType = json['direction_type'];
    flightType = json['flight_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['airline'] = airline!.toJson();
    _data['from'] = from!.toJson();
    _data['to'] = to!.toJson();
    _data['terminal'] = terminal;
    _data['gate'] = gate;
    _data['boarding_at'] = boardingAt;
    _data['klass'] = klass;
    _data['etd_at'] = etdAt;
    _data['eta_at'] = etaAt;
    _data['code'] = code;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['slug'] = slug;
    _data['id'] = id;
    _data['direction_type'] = directionType;
    _data['flight_type'] = flightType;
    return _data;
  }
}

class Airline {
  Airline({
    required this.id,
    required this.slug,
    required this.name,
    required this.code,
    required this.icon,
    required this.logo,
    required this.web,
  });
  late final int? id;
  late final String? slug;
  late final String? name;
  late final String? code;
  late final IconDetailTrip icon;
  late final Logo logo;
  late final String? web;

  Airline.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    code = json['code'];
    icon = IconDetailTrip.fromJson(json['icon']);
    logo = Logo.fromJson(json['logo']);
    web = json['web'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['code'] = code;
    _data['icon'] = icon.toJson();
    _data['logo'] = logo.toJson();
    _data['web'] = web;
    return _data;
  }
}

class IconDetailTrip {
  IconDetailTrip({
    required this.url,
    required this.medium,
    required this.small,
  });
  late final String url;
  late final Medium medium;
  late final Small small;

  IconDetailTrip.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    medium = Medium.fromJson(json['medium']);
    small = Small.fromJson(json['small']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['medium'] = medium.toJson();
    _data['small'] = small.toJson();
    return _data;
  }
}

class From {
  From({
    required this.id,
    required this.slug,
    required this.name,
    required this.code,
    required this.lat,
    required this.lon,
    required this.city,
    required this.country,
    required this.web,
  });
  late final int id;
  late final String slug;
  late final String name;
  late final String code;
  late final String lat;
  late final String lon;
  late final String city;
  late final String country;
  late final String web;

  From.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    code = json['code'];
    lat = json['lat'];
    lon = json['lon'];
    city = json['city'];
    country = json['country'];
    web = json['web'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['code'] = code;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['city'] = city;
    _data['country'] = country;
    _data['web'] = web;
    return _data;
  }
}

class To {
  To({
    required this.id,
    required this.slug,
    required this.name,
    required this.code,
    required this.lat,
    required this.lon,
    required this.city,
    required this.country,
    required this.web,
  });
  late final int id;
  late final String slug;
  late final String name;
  late final String code;
  late final String lat;
  late final String lon;
  late final String city;
  late final String country;
  late final String web;

  To.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    code = json['code'];
    lat = json['lat'];
    lon = json['lon'];
    city = json['city'];
    country = json['country'];
    web = json['web'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['code'] = code;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['city'] = city;
    _data['country'] = country;
    _data['web'] = web;
    return _data;
  }
}

class Hotels {
  Hotels({
    required this.hotel,
    required this.checkinAt,
    required this.checkoutAt,
  });
  late final Hotel? hotel;
  late final String? checkinAt;
  late final String? checkoutAt;

  Hotels.fromJson(Map<String, dynamic> json) {
    hotel = Hotel.fromJson(json['hotel']);
    checkinAt = json['checkin_at'];
    checkoutAt = json['checkout_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hotel'] = hotel!.toJson();
    _data['checkin_at'] = checkinAt;
    _data['checkout_at'] = checkoutAt;
    return _data;
  }
}

class Hotel {
  Hotel({
    required this.city,
    required this.slug,
    required this.name,
    required this.lat,
    required this.lon,
    required this.star,
    required this.photo,
    required this.description,
  });
  late final City? city;
  late final String? slug;
  late final String? name;
  late final String? lat;
  late final String? lon;
  late final int? star;
  late final Photo? photo;
  late final String? description;

  Hotel.fromJson(Map<String, dynamic> json) {
    city = City.fromJson(json['city']);
    slug = json['slug'];
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
    star = json['star'];
    photo = Photo.fromJson(json['photo']);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['city'] = city!.toJson();
    _data['slug'] = slug;
    _data['name'] = name;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['star'] = star;
    _data['photo'] = photo!.toJson();
    _data['description'] = description;
    return _data;
  }
}

class City {
  City({
    required this.name,
    required this.country,
    required this.timezone,
  });
  late final String? name;
  late final String? country;
  late final int? timezone;

  City.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
    timezone = json['timezone'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['country'] = country;
    _data['timezone'] = timezone;
    return _data;
  }
}

class Photo {
  Photo({
    required this.url,
    required this.medium,
    required this.small,
  });
  late final String? url;
  late final Medium? medium;
  late final Small? small;

  Photo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    medium = Medium.fromJson(json['medium']);
    small = Small.fromJson(json['small']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['medium'] = medium!.toJson();
    _data['small'] = small!.toJson();
    return _data;
  }
}

class Itineraries {
  Itineraries({
    required this.title,
    required this.description,
    required this.day,
    required this.at,
  });
  late final String title;
  late final String description;
  late final int day;
  late final String at;

  Itineraries.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    day = json['day'];
    at = json['at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description;
    _data['day'] = day;
    _data['at'] = at;
    return _data;
  }
}

class Variants {
  Variants({
    required this.id,
    required this.name,
    required this.tipe,
    required this.currency,
    required this.price,
    required this.fee,
    required this.equipment,
    required this.basePrice,
    required this.sequence,
    required this.public,
  });
  late final int id;
  late final String name;
  late final String tipe;
  late final String currency;
  late final int price;
  late final int fee;
  late final int equipment;
  late final bool basePrice;
  late final int sequence;
  late final bool public;

  Variants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tipe = json['tipe'];
    currency = json['currency'];
    price = json['price'];
    fee = json['fee'];
    equipment = json['equipment'];
    basePrice = json['base_price'];
    sequence = json['sequence'];
    public = json['public'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['tipe'] = tipe;
    _data['currency'] = currency;
    _data['price'] = price;
    _data['fee'] = fee;
    _data['equipment'] = equipment;
    _data['base_price'] = basePrice;
    _data['sequence'] = sequence;
    _data['public'] = public;
    return _data;
  }
}

class Tags {
  Tags({
    required this.listingsTagId,
    required this.id,
    required this.title,
    required this.category,
  });
  late final String listingsTagId;
  late final int id;
  late final String title;
  late final String category;

  Tags.fromJson(Map<String, dynamic> json) {
    listingsTagId = json['listings_tag_id'];
    id = json['id'];
    title = json['title'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['listings_tag_id'] = listingsTagId;
    _data['id'] = id;
    _data['title'] = title;
    _data['category'] = category;
    return _data;
  }
}

class Addons {
  Addons({
    required this.id,
    required this.amount,
    required this.note,
    required this.currency,
    required this.categoryId,
    required this.categoryName,
    required this.categoryRequired,
    required this.categoryTipe,
    required this.categoryUnique,
  });
  late final int id;
  late final int amount;
  late final String note;
  late final String currency;
  late final int categoryId;
  late final String categoryName;
  late final bool categoryRequired;
  late final String categoryTipe;
  late final bool categoryUnique;

  Addons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    note = json['note'];
    currency = json['currency'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryRequired = json['category_required'];
    categoryTipe = json['category_tipe'];
    categoryUnique = json['category_unique'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['amount'] = amount;
    _data['note'] = note;
    _data['currency'] = currency;
    _data['category_id'] = categoryId;
    _data['category_name'] = categoryName;
    _data['category_required'] = categoryRequired;
    _data['category_tipe'] = categoryTipe;
    _data['category_unique'] = categoryUnique;
    return _data;
  }
}

Map<String, dynamic> mockDetailTrip = {
  "id": 1686,
  "insurance_id": 9,
  "season_id": 8,
  "site_id": 102,
  "visa_provider_id": 271,
  "muassasah_id": 69,
  "available_seats": 44,
  "category": "UMROH",
  "channel": "umroh-akhir-tahun-plus-jordan-2022-a7bvpjorwm",
  "close_at": "2022-12-01T13:33:35.000+07:00",
  "created_at": "2022-10-03T13:47:20.489+07:00",
  "currency": "IDR",
  "days": 10,
  "departure_at": "2022-12-12T13:33:35.000+07:00",
  "departure_from": "JAKARTA",
  "description":
      "\r\n          <div class=\"tourpack__template\">\r\n            \r\n          <div class=\"st-main-description mb-3\">\r\n            <p>Umroh Akhir Tahun Plus Jordan 2022</p>\r\n          </div>\r\n        \r\n            \r\n          <div class=\"st-all-guides mb-3\">\r\n            <p class=\"st-title mb-0\">Pembimbing Jamaah:</p>\r\n            <ul class=\"st-guide-list\">\r\n        <li></li>\r\n            </ul>\r\n          </div>\r\n        \r\n            \r\n          <div class=\"st-all-includes mb-3\">\r\n            <p class=\"st-title mb-0\">Harga Termasuk:</p>\r\n            <ul class=\"st-include-list\">\r\n        <li></li>\r\n            </ul>\r\n          </div>\r\n        \r\n            \r\n          <div class=\"st-all-excludes mb-3\">\r\n            <p class=\"st-title mb-0\">Harga Tidak Termasuk:</p>\r\n            <ul class=\"st-exclude-list\">\r\n        <li></li>\r\n            </ul>\r\n          </div>\r\n        \r\n            \r\n          <div class=\"st-all-benefit mb-3\">\r\n            <p class=\"st-title mb-0\">Keunggulan/Kelebihan:</p>\r\n            <ul class=\"st-benefit-list\">\r\n        <li></li>\r\n            </ul>\r\n          </div>\r\n        \r\n            \r\n          <div class=\"st-all-tnc mb-3\">\r\n            <p class=\"st-title mb-0\">Syarat dan Ketentuan:</p>\r\n            <ul class=\"st-tnc-list\">\r\n        <li></li>\r\n            </ul>\r\n          </div>\r\n        \r\n          </div>\r\n        ",
  "hotel_star": 5,
  "insurance": {
    "id": 9,
    "siskopatuh_id": 9001,
    "name": "Pan Pacific Syariah Insurance"
  },
  "meta_description": "Umroh Akhir Tahun Plus Jordan 2022",
  "meta_keywords": "umroh akhir tahun",
  "meta_title": "Umroh Akhir Tahun Plus Jordan 2022",
  "invoice_due_at": "2022-11-27T13:33:35.000+07:00",
  "minimum_down_payment": "10000000.0",
  "minimum_partial_payment": "5000000.0",
  "name": "Umroh Akhir Tahun Plus Jordan 2022",
  "pict": {
    "url":
        "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1686/slide_1__2_.png",
    "medium": {
      "url":
          "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1686/medium_slide_1__2_.png"
    },
    "small": {
      "url":
          "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1686/small_slide_1__2_.png"
    }
  },
  "price_start": 25000000,
  "season": {
    "id": 8,
    "site_id": null,
    "slug": "1444-h-djx5mxd8pr",
    "total_pax": null,
    "active": true,
    "name": "1444 H",
    "start_at": "2022-07-30T17:45:00.000+07:00",
    "stop_at": "2023-07-18T17:45:00.000+07:00",
    "created_at": "2021-02-25T13:47:31.007+07:00",
    "updated_at": "2022-08-30T14:20:13.966+07:00",
    "hijri": 1444
  },
  "siskopatuh_ready": true,
  "slug": "umroh-akhir-tahun-plus-jordan-2022-a7bvpjorwm",
  "status": "ACTIVE",
  "total_booking": 1,
  "total_pax": 45,
  "total_listener": 0,
  "updated_at": "2022-10-03T14:53:41.940+07:00",
  "buses": [
    {
      "listings_bus_id": 820,
      "listings_bus_slug": "anx6x0my6b",
      "id": 46,
      "slug": "pq5jwrenmy",
      "bus": "Kereta Cepat Madinah-Mekkah",
      "transport": "Haramain High Speed Railway",
      "logo": {
        "url":
            "https://storage.googleapis.com/muslimpergi/uploads/transport/logo/45/kereta-cepat-mekkah-madinah.jpg",
        "medium": {
          "url":
              "https://storage.googleapis.com/muslimpergi/uploads/transport/logo/45/medium_kereta-cepat-mekkah-madinah.jpg"
        },
        "small": {
          "url":
              "https://storage.googleapis.com/muslimpergi/uploads/transport/logo/45/small_kereta-cepat-mekkah-madinah.jpg"
        }
      }
    }
  ],
  "flights": [
    {
      "airline": {
        "id": 1,
        "slug": "saudi-arabian-airlines",
        "name": "Saudia Airlines",
        "code": "SV",
        "icon": {
          "url":
              "https://storage.googleapis.com/muslimpergi/uploads/airline/icon/1/saudia.png",
          "medium": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/airline/icon/1/medium_saudia.png"
          },
          "small": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/airline/icon/1/small_saudia.png"
          }
        },
        "logo": {
          "url":
              "https://storage.googleapis.com/muslimpergi/uploads/airline/logo/1/saudia.jpg",
          "medium": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/airline/logo/1/medium_saudia.jpg"
          },
          "small": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/airline/logo/1/small_saudia.jpg"
          }
        },
        "web": "https://www.saudia.com/"
      },
      "from": {
        "id": 1,
        "slug": "soekarno-hatta-international-airport",
        "name": "CGK - Soekarno–Hatta International Airport",
        "code": "CGK",
        "lat": "-6.12663526349654",
        "lon": "106.65375961960444",
        "city": "Jakarta",
        "country": "ID",
        "web": "http://soekarnohatta-airport.co.id/"
      },
      "to": {
        "id": 2,
        "slug": "medina-prince-mohammad-bin-abdulaziz-airport",
        "name": "MED - Medina Prince Mohammad bin Abdulaziz Airport",
        "code": "MED",
        "lat": "24.55447027648014",
        "lon": "39.71534981430659",
        "city": "Medina",
        "country": "SA",
        "web": "http://www.madinahairport.com/"
      },
      "terminal": "Internasional",
      "gate": null,
      "boarding_at": "2022-12-12T13:43:58.598+07:00",
      "klass": null,
      "etd_at": "2022-12-12T13:43:58.598+07:00",
      "eta_at": "2022-12-12T13:43:58.598+07:00",
      "code": "SV",
      "created_at": "2022-10-03T13:47:20.526+07:00",
      "updated_at": "2022-10-03T14:53:41.739+07:00",
      "slug": "amv47dddpa",
      "id": 2235,
      "direction_type": null,
      "flight_type": null
    }
  ],
  "hotels": [
    {
      "hotel": {
        "city": {"name": "Medinah", "country": "SA", "timezone": 3},
        "slug": "al-ansar-new-palace",
        "name": "Al Ansar New Palace",
        "lat": "24.4734351",
        "lon": "39.6096953",
        "star": 3,
        "photo": {
          "url":
              "https://storage.googleapis.com/muslimpergi/uploads/hotel/photo/167/palace.jpg",
          "medium": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/hotel/photo/167/medium_palace.jpg"
          },
          "small": {
            "url":
                "https://storage.googleapis.com/muslimpergi/uploads/hotel/photo/167/small_palace.jpg"
          }
        },
        "description":
            "Al Ansar Palace Hotel terletak 100 meter dari pintu gerbang Mesjid Nabi No.17 (pintu masuk pria dan wanita)."
      },
      "checkin_at": "2022-12-12T13:49:10.168+07:00",
      "checkout_at": "2022-12-15T13:49:10.169+07:00"
    }
  ],
  "itineraries": [
    {
      "title": "Hari Ke-1 Keberangkatan",
      "description":
          "<p>Keberangkatan</p><ul><li>Berkumpul di Bandara</li></ul>",
      "day": 1,
      "at": "2022-12-12T13:33:35.000+07:00"
    },
    {
      "title": "Hari Ke-2 City Tour Madinah",
      "description": "<p>City Tour Madinah</p><p><br></p>",
      "day": 2,
      "at": "2022-12-13T13:33:35.000+07:00"
    },
    {
      "title": "Hari Ke-3",
      "description": "<p>Kegiatan Hari Ke-3</p>",
      "day": 3,
      "at": "2022-12-14T13:33:35.000+07:00"
    }
  ],
  "variants": [
    {
      "id": 3897,
      "name": "[QUAD] EKONOMIS",
      "tipe": "QUAD",
      "currency": "IDR",
      "price": 25000000,
      "fee": 1000000,
      "equipment": 0,
      "base_price": true,
      "sequence": 1,
      "public": true
    },
    {
      "id": 3898,
      "name": "[DOUBLE] COUPLE",
      "tipe": "DOUBLE",
      "currency": "IDR",
      "price": 30000000,
      "fee": 1000000,
      "equipment": 0,
      "base_price": false,
      "sequence": 2,
      "public": true
    }
  ],
  "tags": [],
  "addons": [
    {
      "id": 639,
      "amount": 500000,
      "note": "Koper Jamaah",
      "currency": "IDR",
      "category_id": 170,
      "category_name": "Perlengkapan Umroh",
      "category_required": false,
      "category_tipe": "PERSON",
      "category_unique": false
    },
    {
      "id": 640,
      "amount": 500000,
      "note": "Pakaian Ihram",
      "currency": "IDR",
      "category_id": 170,
      "category_name": "Perlengkapan Umroh",
      "category_required": false,
      "category_tipe": "PERSON",
      "category_unique": false
    }
  ],
  "nocache": false
};
