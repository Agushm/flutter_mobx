class Trip {
  Trip({
    required this.id,
    required this.slug,
    required this.name,
    required this.channel,
    required this.description,
    required this.pict,
    required this.closeAt,
    required this.status,
    required this.totalPax,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
    required this.departureAt,
    required this.days,
    required this.priceStart,
    required this.currency,
    required this.hotelStar,
    required this.totalBooking,
    required this.departureFrom,
    required this.availableSeats,
    required this.minimumDownPayment,
    required this.minimumPartialPayment,
  });
  late final int id;
  late final String slug;
  late final String name;
  late final String channel;
  late final String description;
  late final Pict pict;
  late final String closeAt;
  late final String status;
  late final int totalPax;
  late final String createdAt;
  late final String updatedAt;
  late final String category;
  late final String departureAt;
  late final int days;
  late final int priceStart;
  late final String currency;
  late final int hotelStar;
  late final int totalBooking;
  late final String departureFrom;
  late final int availableSeats;
  late final String minimumDownPayment;
  late final String minimumPartialPayment;

  Trip.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    channel = json['channel'];
    description = json['description'];
    pict = Pict.fromJson(json['pict']);
    closeAt = json['close_at'];
    status = json['status'];
    totalPax = json['total_pax'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['category'];
    departureAt = json['departure_at'];
    days = json['days'];
    priceStart = json['price_start'];
    currency = json['currency'];
    hotelStar = json['hotel_star'];
    totalBooking = json['total_booking'];
    departureFrom = json['departure_from'];
    availableSeats = json['available_seats'];
    minimumDownPayment = json['minimum_down_payment'];
    minimumPartialPayment = json['minimum_partial_payment'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['channel'] = channel;
    _data['description'] = description;
    _data['pict'] = pict.toJson();
    _data['close_at'] = closeAt;
    _data['status'] = status;
    _data['total_pax'] = totalPax;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['category'] = category;
    _data['departure_at'] = departureAt;
    _data['days'] = days;
    _data['price_start'] = priceStart;
    _data['currency'] = currency;
    _data['hotel_star'] = hotelStar;
    _data['total_booking'] = totalBooking;
    _data['departure_from'] = departureFrom;
    _data['available_seats'] = availableSeats;
    _data['minimum_down_payment'] = minimumDownPayment;
    _data['minimum_partial_payment'] = minimumPartialPayment;
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
