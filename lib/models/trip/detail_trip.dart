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
  late final int id;
  late final int insuranceId;
  late final int seasonId;
  late final int siteId;
  late final int visaProviderId;
  late final Null muassasahId;
  late final int availableSeats;
  late final String category;
  late final String channel;
  late final String closeAt;
  late final String createdAt;
  late final String currency;
  late final int days;
  late final String departureAt;
  late final String departureFrom;
  late final String description;
  late final int hotelStar;
  late final Insurance insurance;
  late final String metaDescription;
  late final String metaKeywords;
  late final String metaTitle;
  late final String invoiceDueAt;
  late final String minimumDownPayment;
  late final String minimumPartialPayment;
  late final String name;
  late final Pict pict;
  late final int priceStart;
  late final Season season;
  late final bool siskopatuhReady;
  late final String slug;
  late final String status;
  late final int totalBooking;
  late final int totalPax;
  late final int totalListener;
  late final String updatedAt;
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
    insurance = Insurance.fromJson(json['insurance']);
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
    _data['insurance'] = insurance.toJson();
    _data['meta_description'] = metaDescription;
    _data['meta_keywords'] = metaKeywords;
    _data['meta_title'] = metaTitle;
    _data['invoice_due_at'] = invoiceDueAt;
    _data['minimum_down_payment'] = minimumDownPayment;
    _data['minimum_partial_payment'] = minimumPartialPayment;
    _data['name'] = name;
    _data['pict'] = pict.toJson();
    _data['price_start'] = priceStart;
    _data['season'] = season.toJson();
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
  late final int id;
  late final Null siteId;
  late final String slug;
  late final Null totalPax;
  late final bool active;
  late final String name;
  late final String startAt;
  late final String stopAt;
  late final String createdAt;
  late final String updatedAt;
  late final int hijri;

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
  late final int listingsBusId;
  late final String listingsBusSlug;
  late final int id;
  late final String slug;
  late final String bus;
  late final String transport;
  late final Logo logo;

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
    _data['logo'] = logo.toJson();
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
  late final Airline airline;
  late final From from;
  late final To to;
  late final String terminal;
  late final String? gate;
  late final String boardingAt;
  late final String? klass;
  late final String etdAt;
  late final String etaAt;
  late final String code;
  late final String createdAt;
  late final String updatedAt;
  late final String slug;
  late final int id;
  late final Null directionType;
  late final Null flightType;

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
    _data['airline'] = airline.toJson();
    _data['from'] = from.toJson();
    _data['to'] = to.toJson();
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
  late final int id;
  late final String slug;
  late final String name;
  late final String code;
  late final IconDetailTrip icon;
  late final Logo logo;
  late final String web;

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
  late final Hotel hotel;
  late final String checkinAt;
  late final String checkoutAt;

  Hotels.fromJson(Map<String, dynamic> json) {
    hotel = Hotel.fromJson(json['hotel']);
    checkinAt = json['checkin_at'];
    checkoutAt = json['checkout_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hotel'] = hotel.toJson();
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
  late final City city;
  late final String slug;
  late final String name;
  late final String lat;
  late final String lon;
  late final int star;
  late final Photo photo;
  late final String description;

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
    _data['city'] = city.toJson();
    _data['slug'] = slug;
    _data['name'] = name;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['star'] = star;
    _data['photo'] = photo.toJson();
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
  late final String name;
  late final String country;
  late final int timezone;

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
  late final String url;
  late final Medium medium;
  late final Small small;

  Photo.fromJson(Map<String, dynamic> json) {
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
