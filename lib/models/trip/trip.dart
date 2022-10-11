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

Map<String, dynamic> mockTrip = {
  "id": 1049,
  "slug": "umroh-oktober-2022-plus-turki-eo8xamqgjk",
  "name": "Umroh Oktober 2022 Plus Turki",
  "channel": "umroh-oktober-2022-plus-turki-eo8xamqgjk",
  "description":
      "\r\n        <div class=\"tourpack__template\">\r\n          \r\n        <div class=\"st-main-description mb-3\">\r\n          <p>Umroh Oktober 2022 Plus Turki.</p>\r\n        </div>\r\n      \r\n          \r\n        <div class=\"st-all-benefit mb-3\">\r\n          <p class=\"st-title mb-0\">Benefit :</p>\r\n          <ul class=\"st-benefit-list\">\r\n      <li>Umroh Plus Tour Turki<span class=\"st-benefit-divider\" style=\"opacity: 0;\">|</span></li><li>Umroh Hemat Akhir Tahun<span class=\"st-benefit-divider\" style=\"opacity: 0;\">|</span></li><li>Umroh Bareng Ustadz</li>\r\n          </ul>\r\n        </div>\r\n      \r\n          \r\n        <div class=\"st-all-tnc mb-3\">\r\n          <p class=\"st-title mb-0\">Syarat dan Ketentuan :</p>\r\n          <ul class=\"st-tnc-list\">\r\n      <li>Wajib Vaksin 2x<span class=\"st-tnc-divider\" style=\"opacity: 0;\">|</span></li><li>Vaksin Booster<span class=\"st-tnc-divider\" style=\"opacity: 0;\">|</span></li><li>Hotel Karantina</li>\r\n          </ul>\r\n        </div>\r\n      \r\n        </div>\r\n      ",
  "pict": {
    "url":
        "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1049/paket_umroh_banner-min.jpg",
    "medium": {
      "url":
          "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1049/medium_paket_umroh_banner-min.jpg"
    },
    "small": {
      "url":
          "https://storage.googleapis.com/muslimpergi/uploads/listing/pict/1049/small_paket_umroh_banner-min.jpg"
    }
  },
  "close_at": "2022-10-01T14:39:23.000+07:00",
  "status": "ACTIVE",
  "total_pax": 50,
  "created_at": "2022-02-25T14:43:50.947+07:00",
  "updated_at": "2022-10-07T15:42:37.144+07:00",
  "category": "UMROH",
  "departure_at": "2022-10-04T14:39:23.000+07:00",
  "days": 20,
  "price_start": 30000000,
  "currency": "IDR",
  "hotel_star": 5,
  "total_booking": 7,
  "departure_from": "JAKARTA",
  "available_seats": 43,
  "minimum_down_payment": "10000000.0",
  "minimum_partial_payment": "0.0"
};
