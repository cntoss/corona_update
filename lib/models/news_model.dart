// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
    final List<Countrydatum> countrydata;

    NewsModel({
        this.countrydata,
    });

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        countrydata: json["countryitems"] == null ? null : List<Countrydatum>.from(json["countryitems"].map((x) => Countrydatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "countrydata": countrydata == null ? null : List<dynamic>.from(countrydata.map((x) => x.toJson())),
    };
}

class Countrydatum {
    final Info info;
    final int totalCases;
    final int totalRecovered;
    final int totalUnresolved;
    final int totalDeaths;
    final int totalNewCasesToday;
    final int totalNewDeathsToday;
    final int totalActiveCases;
    final int totalSeriousCases;

    Countrydatum({
        this.info,
        this.totalCases,
        this.totalRecovered,
        this.totalUnresolved,
        this.totalDeaths,
        this.totalNewCasesToday,
        this.totalNewDeathsToday,
        this.totalActiveCases,
        this.totalSeriousCases,
    });

    factory Countrydatum.fromJson(Map<String, dynamic> json) => Countrydatum(
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        totalCases: json["total_cases"] == null ? null : json["total_cases"],
        totalRecovered: json["total_recovered"] == null ? null : json["total_recovered"],
        totalUnresolved: json["total_unresolved"] == null ? null : json["total_unresolved"],
        totalDeaths: json["total_deaths"] == null ? null : json["total_deaths"],
        totalNewCasesToday: json["total_new_cases_today"] == null ? null : json["total_new_cases_today"],
        totalNewDeathsToday: json["total_new_deaths_today"] == null ? null : json["total_new_deaths_today"],
        totalActiveCases: json["total_active_cases"] == null ? null : json["total_active_cases"],
        totalSeriousCases: json["total_serious_cases"] == null ? null : json["total_serious_cases"],
    );

    Map<String, dynamic> toJson() => {
        "info": info == null ? null : info.toJson(),
        "total_cases": totalCases == null ? null : totalCases,
        "total_recovered": totalRecovered == null ? null : totalRecovered,
        "total_unresolved": totalUnresolved == null ? null : totalUnresolved,
        "total_deaths": totalDeaths == null ? null : totalDeaths,
        "total_new_cases_today": totalNewCasesToday == null ? null : totalNewCasesToday,
        "total_new_deaths_today": totalNewDeathsToday == null ? null : totalNewDeathsToday,
        "total_active_cases": totalActiveCases == null ? null : totalActiveCases,
        "total_serious_cases": totalSeriousCases == null ? null : totalSeriousCases,
    };
}

class Info {
    final int ourid;
    final String title;
    final String code;
    final String source;

    Info({
        this.ourid,
        this.title,
        this.code,
        this.source,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        ourid: json["ourid"] == null ? null : json["ourid"],
        title: json["title"] == null ? null : json["title"],
        code: json["code"] == null ? null : json["code"],
        source: json["source"] == null ? null : json["source"],
    );

    Map<String, dynamic> toJson() => {
        "ourid": ourid == null ? null : ourid,
        "title": title == null ? null : title,
        "code": code == null ? null : code,
        "source": source == null ? null : source,
    };
}
