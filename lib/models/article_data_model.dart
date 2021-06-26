class ArticleDataModel {
  String status = '';
  String copyright = '';
  String section = '';
  String lastUpdated = '';
  int numResults = 0;
  List<Article> results = [];
  ArticleDataModel();
  ArticleDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    copyright = json['copyright'];
    section = json['section'];
    lastUpdated = json['last_updated'];
    numResults = json['num_results'];
    if (json['results'] != null) {
      json['results'].forEach((element) {
       
        results.add(Article.fromJson(element));
      });
    }
  }
}

class Article {
  String section = '';
  String subsection = '';
  String title = '';
  String abstract = '';
  String url = '';
  String uri = '';
  String byline = '';
  String itemType = '';
  String updatedDate = '';
  String createdDate = '';
  String publishedDate = '';
  String materialTypeFacet = '';
  String kicker = '';
  List<dynamic> desFacet = [];
  List<dynamic> orgFacet = [];
  List<dynamic> perFacet = [];
  List<dynamic> geoFacet = [];
  List<ArticleMultiMedia> multimedia = [];
  String shortUrl = '';
  Article.fromJson(Map<String, dynamic> json) {
    section = json['section'];
    subsection = json['subsection'];
    title = json['title'];
    abstract = json['abstract'];
    url = json['url'];
    uri = json['uri'];
    byline = json['byline'];
    itemType = json['item_type'];
    updatedDate = json['updated_date'];
    createdDate = json['created_date'];
    publishedDate = json['published_date'];
    materialTypeFacet = json['material_type_facet'];
    kicker = json['kicker'];
    desFacet = json['des_facet'];
    orgFacet = json['org_facet'];
    perFacet = json['per_facet'];
    geoFacet = json['geo_facet'];
    shortUrl = json['short_url'];
    if (json['multimedia'] != null) {
      json['multimedia'].forEach((element ) {
        multimedia.add(ArticleMultiMedia.fromJson(element));
      });
    }
  }
}

class ArticleMultiMedia {
  String url = '';
  String format = '';
  int height = 0;
  int width = 0;
  String type = '';
  String subtype = '';
  String caption = '';
  String copyright = '';
  ArticleMultiMedia.fromJson(Map<String, dynamic> json) {
  
    url = json['url'];
    format = json['format'];
    height = json['height'];
    width = json['width'];
    type = json['type'];
    subtype = json['subtype'];
    caption = json['caption'];
    copyright = json['copyright'];
  }
}
