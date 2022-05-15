/// data : [{"type":"gif","id":"3o6gb3hNd7ej5Dlp72","slug":"thegrammys-lady-gaga-grammys-2016-david-bowie-tribute-3o6gb3hNd7ej5Dlp72","url":"http://giphy.com/gifs/thegrammys-lady-gaga-grammys-2016-david-bowie-tribute-3o6gb3hNd7ej5Dlp72","bitly_gif_url":"http://gph.is/1U4K1xl","bitly_url":"http://gph.is/1U4K1xl","embed_url":"http://giphy.com/embed/3o6gb3hNd7ej5Dlp72","username":"thegrammys","source":"","rating":"pg","content_url":"","user":{"avatar_url":"https://media0.giphy.com/avatars/thegrammys/VQeQQc6QH4PZ.gif","banner_url":"https://media0.giphy.com/avatars/thegrammys/ERuhizn4iKTf.jpg","profile_url":"https://giphy.com/thegrammys/","username":"thegrammys","display_name":"The GRAMMYs","twitter":"@theGRAMMYs"},"source_tld":"","source_post_url":"","import_datetime":"2016-02-16 03:28:02","trending_datetime":"2016-02-16 03:35:29","images":{"fixed_height":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.gif","width":"369","height":"200","size":"389791","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.mp4","mp4_size":"27942","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.webp","webp_size":"131082"},"fixed_height_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_s.gif","width":"369","height":"200"},"fixed_height_downsampled":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.gif","width":"369","height":"200","size":"204434","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.webp","webp_size":"66478"},"fixed_width":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.gif","width":"200","height":"108","size":"143349","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.mp4","mp4_size":"12046","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.webp","webp_size":"56496"},"fixed_width_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_s.gif","width":"200","height":"108"},"fixed_width_downsampled":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.gif","width":"200","height":"108","size":"75268","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.webp","webp_size":"28420"},"fixed_height_small":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.gif","width":"185","height":"100","size":"125942","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.mp4","mp4_size":"10782","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.webp","webp_size":"50598"},"fixed_height_small_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100_s.gif","width":"185","height":"100"},"fixed_width_small":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.gif","width":"100","height":"54","size":"45849","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.mp4","mp4_size":"5548","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.webp","webp_size":"22728"},"fixed_width_small_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w_s.gif","width":"100","height":"54"},"downsized":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"downsized_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"},"downsized_large":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"downsized_medium":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"original":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473","frames":"12","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.mp4","mp4_size":"48591","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.webp","webp_size":"209076"},"original_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"},"looping":{"mp4":"http://media.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy-loop.mp4"}}}]
/// meta : {"status":200,"msg":"OK"}
/// pagination : {"count":5,"offset":0}

class TrendingGifs {
  TrendingGifs({
    this.data,
    this.meta,
    this.pagination,
  });

  TrendingGifs.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  List<Data>? data;
  Meta? meta;
  Pagination? pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    return map;
  }
}

/// count : 5
/// offset : 0

class Pagination {
  Pagination({
    this.count,
    this.offset,
  });

  Pagination.fromJson(dynamic json) {
    count = json['count'];
    offset = json['offset'];
  }

  int? count;
  int? offset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['offset'] = offset;
    return map;
  }
}

/// status : 200
/// msg : "OK"

class Meta {
  Meta({
    this.status,
    this.msg,
  });

  Meta.fromJson(dynamic json) {
    status = json['status'];
    msg = json['msg'];
  }

  int? status;
  String? msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['msg'] = msg;
    return map;
  }
}

/// type : "gif"
/// id : "3o6gb3hNd7ej5Dlp72"
/// slug : "thegrammys-lady-gaga-grammys-2016-david-bowie-tribute-3o6gb3hNd7ej5Dlp72"
/// url : "http://giphy.com/gifs/thegrammys-lady-gaga-grammys-2016-david-bowie-tribute-3o6gb3hNd7ej5Dlp72"
/// bitly_gif_url : "http://gph.is/1U4K1xl"
/// bitly_url : "http://gph.is/1U4K1xl"
/// embed_url : "http://giphy.com/embed/3o6gb3hNd7ej5Dlp72"
/// username : "thegrammys"
/// source : ""
/// rating : "pg"
/// content_url : ""
/// user : {"avatar_url":"https://media0.giphy.com/avatars/thegrammys/VQeQQc6QH4PZ.gif","banner_url":"https://media0.giphy.com/avatars/thegrammys/ERuhizn4iKTf.jpg","profile_url":"https://giphy.com/thegrammys/","username":"thegrammys","display_name":"The GRAMMYs","twitter":"@theGRAMMYs"}
/// source_tld : ""
/// source_post_url : ""
/// import_datetime : "2016-02-16 03:28:02"
/// trending_datetime : "2016-02-16 03:35:29"
/// images : {"fixed_height":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.gif","width":"369","height":"200","size":"389791","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.mp4","mp4_size":"27942","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.webp","webp_size":"131082"},"fixed_height_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_s.gif","width":"369","height":"200"},"fixed_height_downsampled":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.gif","width":"369","height":"200","size":"204434","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.webp","webp_size":"66478"},"fixed_width":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.gif","width":"200","height":"108","size":"143349","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.mp4","mp4_size":"12046","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.webp","webp_size":"56496"},"fixed_width_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_s.gif","width":"200","height":"108"},"fixed_width_downsampled":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.gif","width":"200","height":"108","size":"75268","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.webp","webp_size":"28420"},"fixed_height_small":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.gif","width":"185","height":"100","size":"125942","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.mp4","mp4_size":"10782","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.webp","webp_size":"50598"},"fixed_height_small_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100_s.gif","width":"185","height":"100"},"fixed_width_small":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.gif","width":"100","height":"54","size":"45849","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.mp4","mp4_size":"5548","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.webp","webp_size":"22728"},"fixed_width_small_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w_s.gif","width":"100","height":"54"},"downsized":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"downsized_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"},"downsized_large":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"downsized_medium":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"},"original":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473","frames":"12","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.mp4","mp4_size":"48591","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.webp","webp_size":"209076"},"original_still":{"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"},"looping":{"mp4":"http://media.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy-loop.mp4"}}

class Data {
  Data({
    this.type,
    this.id,
    this.slug,
    this.url,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.rating,
    this.contentUrl,
    this.user,
    this.sourceTld,
    this.sourcePostUrl,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
  });

  Data.fromJson(dynamic json) {
    type = json['type'];
    id = json['id'];
    slug = json['slug'];
    url = json['url'];
    bitlyGifUrl = json['bitly_gif_url'];
    bitlyUrl = json['bitly_url'];
    embedUrl = json['embed_url'];
    username = json['username'];
    source = json['source'];
    rating = json['rating'];
    contentUrl = json['content_url'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    sourceTld = json['source_tld'];
    sourcePostUrl = json['source_post_url'];
    importDatetime = json['import_datetime'];
    trendingDatetime = json['trending_datetime'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }

  String? type;
  String? id;
  String? slug;
  String? url;
  String? bitlyGifUrl;
  String? bitlyUrl;
  String? embedUrl;
  String? username;
  String? source;
  String? rating;
  String? contentUrl;
  User? user;
  String? sourceTld;
  String? sourcePostUrl;
  String? importDatetime;
  String? trendingDatetime;
  Images? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['id'] = id;
    map['slug'] = slug;
    map['url'] = url;
    map['bitly_gif_url'] = bitlyGifUrl;
    map['bitly_url'] = bitlyUrl;
    map['embed_url'] = embedUrl;
    map['username'] = username;
    map['source'] = source;
    map['rating'] = rating;
    map['content_url'] = contentUrl;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['source_tld'] = sourceTld;
    map['source_post_url'] = sourcePostUrl;
    map['import_datetime'] = importDatetime;
    map['trending_datetime'] = trendingDatetime;
    if (images != null) {
      map['images'] = images?.toJson();
    }
    return map;
  }
}

/// fixed_height : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.gif","width":"369","height":"200","size":"389791","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.mp4","mp4_size":"27942","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.webp","webp_size":"131082"}
/// fixed_height_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_s.gif","width":"369","height":"200"}
/// fixed_height_downsampled : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.gif","width":"369","height":"200","size":"204434","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.webp","webp_size":"66478"}
/// fixed_width : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.gif","width":"200","height":"108","size":"143349","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.mp4","mp4_size":"12046","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.webp","webp_size":"56496"}
/// fixed_width_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_s.gif","width":"200","height":"108"}
/// fixed_width_downsampled : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.gif","width":"200","height":"108","size":"75268","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.webp","webp_size":"28420"}
/// fixed_height_small : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.gif","width":"185","height":"100","size":"125942","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.mp4","mp4_size":"10782","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.webp","webp_size":"50598"}
/// fixed_height_small_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100_s.gif","width":"185","height":"100"}
/// fixed_width_small : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.gif","width":"100","height":"54","size":"45849","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.mp4","mp4_size":"5548","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.webp","webp_size":"22728"}
/// fixed_width_small_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w_s.gif","width":"100","height":"54"}
/// downsized : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"}
/// downsized_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"}
/// downsized_large : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"}
/// downsized_medium : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473"}
/// original : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif","width":"500","height":"271","size":"638473","frames":"12","mp4":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.mp4","mp4_size":"48591","webp":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.webp","webp_size":"209076"}
/// original_still : {"url":"http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif","width":"500","height":"271"}
/// looping : {"mp4":"http://media.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy-loop.mp4"}

class Images {
  Images({
    this.fixedHeight,
    this.fixedHeightStill,
    this.fixedHeightDownsampled,
    this.fixedWidth,
    this.fixedWidthStill,
    this.fixedWidthDownsampled,
    this.fixedHeightSmall,
    this.fixedHeightSmallStill,
    this.fixedWidthSmall,
    this.fixedWidthSmallStill,
    this.downsized,
    this.downsizedStill,
    this.downsizedLarge,
    this.downsizedMedium,
    this.original,
    this.originalStill,
    this.looping,
  });

  Images.fromJson(dynamic json) {
    fixedHeight = json['fixed_height'] != null
        ? FixedHeight.fromJson(json['fixed_height'])
        : null;
    fixedHeightStill = json['fixed_height_still'] != null
        ? FixedHeightStill.fromJson(json['fixed_height_still'])
        : null;
    fixedHeightDownsampled = json['fixed_height_downsampled'] != null
        ? FixedHeightDownsampled.fromJson(json['fixed_height_downsampled'])
        : null;
    fixedWidth = json['fixed_width'] != null
        ? FixedWidth.fromJson(json['fixed_width'])
        : null;
    fixedWidthStill = json['fixed_width_still'] != null
        ? FixedWidthStill.fromJson(json['fixed_width_still'])
        : null;
    fixedWidthDownsampled = json['fixed_width_downsampled'] != null
        ? FixedWidthDownsampled.fromJson(json['fixed_width_downsampled'])
        : null;
    fixedHeightSmall = json['fixed_height_small'] != null
        ? FixedHeightSmall.fromJson(json['fixed_height_small'])
        : null;
    fixedHeightSmallStill = json['fixed_height_small_still'] != null
        ? FixedHeightSmallStill.fromJson(json['fixed_height_small_still'])
        : null;
    fixedWidthSmall = json['fixed_width_small'] != null
        ? FixedWidthSmall.fromJson(json['fixed_width_small'])
        : null;
    fixedWidthSmallStill = json['fixed_width_small_still'] != null
        ? FixedWidthSmallStill.fromJson(json['fixed_width_small_still'])
        : null;
    downsized = json['downsized'] != null
        ? Downsized.fromJson(json['downsized'])
        : null;
    downsizedStill = json['downsized_still'] != null
        ? DownsizedStill.fromJson(json['downsized_still'])
        : null;
    downsizedLarge = json['downsized_large'] != null
        ? DownsizedLarge.fromJson(json['downsized_large'])
        : null;
    downsizedMedium = json['downsized_medium'] != null
        ? DownsizedMedium.fromJson(json['downsized_medium'])
        : null;
    original =
        json['original'] != null ? Original.fromJson(json['original']) : null;
    originalStill = json['original_still'] != null
        ? OriginalStill.fromJson(json['original_still'])
        : null;
    looping =
        json['looping'] != null ? Looping.fromJson(json['looping']) : null;
  }

  FixedHeight? fixedHeight;
  FixedHeightStill? fixedHeightStill;
  FixedHeightDownsampled? fixedHeightDownsampled;
  FixedWidth? fixedWidth;
  FixedWidthStill? fixedWidthStill;
  FixedWidthDownsampled? fixedWidthDownsampled;
  FixedHeightSmall? fixedHeightSmall;
  FixedHeightSmallStill? fixedHeightSmallStill;
  FixedWidthSmall? fixedWidthSmall;
  FixedWidthSmallStill? fixedWidthSmallStill;
  Downsized? downsized;
  DownsizedStill? downsizedStill;
  DownsizedLarge? downsizedLarge;
  DownsizedMedium? downsizedMedium;
  Original? original;
  OriginalStill? originalStill;
  Looping? looping;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fixedHeight != null) {
      map['fixed_height'] = fixedHeight?.toJson();
    }
    if (fixedHeightStill != null) {
      map['fixed_height_still'] = fixedHeightStill?.toJson();
    }
    if (fixedHeightDownsampled != null) {
      map['fixed_height_downsampled'] = fixedHeightDownsampled?.toJson();
    }
    if (fixedWidth != null) {
      map['fixed_width'] = fixedWidth?.toJson();
    }
    if (fixedWidthStill != null) {
      map['fixed_width_still'] = fixedWidthStill?.toJson();
    }
    if (fixedWidthDownsampled != null) {
      map['fixed_width_downsampled'] = fixedWidthDownsampled?.toJson();
    }
    if (fixedHeightSmall != null) {
      map['fixed_height_small'] = fixedHeightSmall?.toJson();
    }
    if (fixedHeightSmallStill != null) {
      map['fixed_height_small_still'] = fixedHeightSmallStill?.toJson();
    }
    if (fixedWidthSmall != null) {
      map['fixed_width_small'] = fixedWidthSmall?.toJson();
    }
    if (fixedWidthSmallStill != null) {
      map['fixed_width_small_still'] = fixedWidthSmallStill?.toJson();
    }
    if (downsized != null) {
      map['downsized'] = downsized?.toJson();
    }
    if (downsizedStill != null) {
      map['downsized_still'] = downsizedStill?.toJson();
    }
    if (downsizedLarge != null) {
      map['downsized_large'] = downsizedLarge?.toJson();
    }
    if (downsizedMedium != null) {
      map['downsized_medium'] = downsizedMedium?.toJson();
    }
    if (original != null) {
      map['original'] = original?.toJson();
    }
    if (originalStill != null) {
      map['original_still'] = originalStill?.toJson();
    }
    if (looping != null) {
      map['looping'] = looping?.toJson();
    }
    return map;
  }
}

/// mp4 : "http://media.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy-loop.mp4"

class Looping {
  Looping({
    this.mp4,
  });

  Looping.fromJson(dynamic json) {
    mp4 = json['mp4'];
  }

  String? mp4;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mp4'] = mp4;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif"
/// width : "500"
/// height : "271"

class OriginalStill {
  OriginalStill({
    this.url,
    this.width,
    this.height,
  });

  OriginalStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif"
/// width : "500"
/// height : "271"
/// size : "638473"
/// frames : "12"
/// mp4 : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.mp4"
/// mp4_size : "48591"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.webp"
/// webp_size : "209076"

class Original {
  Original({
    this.url,
    this.width,
    this.height,
    this.size,
    this.frames,
    this.mp4,
    this.mp4Size,
    this.webp,
    this.webpSize,
  });

  Original.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    frames = json['frames'];
    mp4 = json['mp4'];
    mp4Size = json['mp4_size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? frames;
  String? mp4;
  String? mp4Size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['frames'] = frames;
    map['mp4'] = mp4;
    map['mp4_size'] = mp4Size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif"
/// width : "500"
/// height : "271"
/// size : "638473"

class DownsizedMedium {
  DownsizedMedium({
    this.url,
    this.width,
    this.height,
    this.size,
  });

  DownsizedMedium.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif"
/// width : "500"
/// height : "271"
/// size : "638473"

class DownsizedLarge {
  DownsizedLarge({
    this.url,
    this.width,
    this.height,
    this.size,
  });

  DownsizedLarge.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy_s.gif"
/// width : "500"
/// height : "271"

class DownsizedStill {
  DownsizedStill({
    this.url,
    this.width,
    this.height,
  });

  DownsizedStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/giphy.gif"
/// width : "500"
/// height : "271"
/// size : "638473"

class Downsized {
  Downsized({
    this.url,
    this.width,
    this.height,
    this.size,
  });

  Downsized.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w_s.gif"
/// width : "100"
/// height : "54"

class FixedWidthSmallStill {
  FixedWidthSmallStill({
    this.url,
    this.width,
    this.height,
  });

  FixedWidthSmallStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.gif"
/// width : "100"
/// height : "54"
/// size : "45849"
/// mp4 : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.mp4"
/// mp4_size : "5548"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100w.webp"
/// webp_size : "22728"

class FixedWidthSmall {
  FixedWidthSmall({
    this.url,
    this.width,
    this.height,
    this.size,
    this.mp4,
    this.mp4Size,
    this.webp,
    this.webpSize,
  });

  FixedWidthSmall.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    mp4 = json['mp4'];
    mp4Size = json['mp4_size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? mp4;
  String? mp4Size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['mp4'] = mp4;
    map['mp4_size'] = mp4Size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100_s.gif"
/// width : "185"
/// height : "100"

class FixedHeightSmallStill {
  FixedHeightSmallStill({
    this.url,
    this.width,
    this.height,
  });

  FixedHeightSmallStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.gif"
/// width : "185"
/// height : "100"
/// size : "125942"
/// mp4 : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.mp4"
/// mp4_size : "10782"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/100.webp"
/// webp_size : "50598"

class FixedHeightSmall {
  FixedHeightSmall({
    this.url,
    this.width,
    this.height,
    this.size,
    this.mp4,
    this.mp4Size,
    this.webp,
    this.webpSize,
  });

  FixedHeightSmall.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    mp4 = json['mp4'];
    mp4Size = json['mp4_size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? mp4;
  String? mp4Size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['mp4'] = mp4;
    map['mp4_size'] = mp4Size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.gif"
/// width : "200"
/// height : "108"
/// size : "75268"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_d.webp"
/// webp_size : "28420"

class FixedWidthDownsampled {
  FixedWidthDownsampled({
    this.url,
    this.width,
    this.height,
    this.size,
    this.webp,
    this.webpSize,
  });

  FixedWidthDownsampled.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w_s.gif"
/// width : "200"
/// height : "108"

class FixedWidthStill {
  FixedWidthStill({
    this.url,
    this.width,
    this.height,
  });

  FixedWidthStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.gif"
/// width : "200"
/// height : "108"
/// size : "143349"
/// mp4 : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.mp4"
/// mp4_size : "12046"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200w.webp"
/// webp_size : "56496"

class FixedWidth {
  FixedWidth({
    this.url,
    this.width,
    this.height,
    this.size,
    this.mp4,
    this.mp4Size,
    this.webp,
    this.webpSize,
  });

  FixedWidth.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    mp4 = json['mp4'];
    mp4Size = json['mp4_size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? mp4;
  String? mp4Size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['mp4'] = mp4;
    map['mp4_size'] = mp4Size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.gif"
/// width : "369"
/// height : "200"
/// size : "204434"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_d.webp"
/// webp_size : "66478"

class FixedHeightDownsampled {
  FixedHeightDownsampled({
    this.url,
    this.width,
    this.height,
    this.size,
    this.webp,
    this.webpSize,
  });

  FixedHeightDownsampled.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200_s.gif"
/// width : "369"
/// height : "200"

class FixedHeightStill {
  FixedHeightStill({
    this.url,
    this.width,
    this.height,
  });

  FixedHeightStill.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  String? url;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

/// url : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.gif"
/// width : "369"
/// height : "200"
/// size : "389791"
/// mp4 : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.mp4"
/// mp4_size : "27942"
/// webp : "http://media4.giphy.com/media/3o6gb3hNd7ej5Dlp72/200.webp"
/// webp_size : "131082"

class FixedHeight {
  FixedHeight({
    this.url,
    this.width,
    this.height,
    this.size,
    this.mp4,
    this.mp4Size,
    this.webp,
    this.webpSize,
  });

  FixedHeight.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    mp4 = json['mp4'];
    mp4Size = json['mp4_size'];
    webp = json['webp'];
    webpSize = json['webp_size'];
  }

  String? url;
  String? width;
  String? height;
  String? size;
  String? mp4;
  String? mp4Size;
  String? webp;
  String? webpSize;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    map['size'] = size;
    map['mp4'] = mp4;
    map['mp4_size'] = mp4Size;
    map['webp'] = webp;
    map['webp_size'] = webpSize;
    return map;
  }
}

/// avatar_url : "https://media0.giphy.com/avatars/thegrammys/VQeQQc6QH4PZ.gif"
/// banner_url : "https://media0.giphy.com/avatars/thegrammys/ERuhizn4iKTf.jpg"
/// profile_url : "https://giphy.com/thegrammys/"
/// username : "thegrammys"
/// display_name : "The GRAMMYs"
/// twitter : "@theGRAMMYs"

class User {
  User({
    this.avatarUrl,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.twitter,
  });

  User.fromJson(dynamic json) {
    avatarUrl = json['avatar_url'];
    bannerUrl = json['banner_url'];
    profileUrl = json['profile_url'];
    username = json['username'];
    displayName = json['display_name'];
    twitter = json['twitter'];
  }

  String? avatarUrl;
  String? bannerUrl;
  String? profileUrl;
  String? username;
  String? displayName;
  String? twitter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatar_url'] = avatarUrl;
    map['banner_url'] = bannerUrl;
    map['profile_url'] = profileUrl;
    map['username'] = username;
    map['display_name'] = displayName;
    map['twitter'] = twitter;
    return map;
  }
}
