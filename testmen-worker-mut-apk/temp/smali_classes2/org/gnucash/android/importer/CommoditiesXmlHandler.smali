.class public Lorg/gnucash/android/importer/CommoditiesXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CommoditiesXmlHandler.java"


# static fields
.field public static final ATTR_EXCHANGE_CODE:Ljava/lang/String; = "exchange-code"

.field public static final ATTR_FULL_NAME:Ljava/lang/String; = "fullname"

.field public static final ATTR_ISO_CODE:Ljava/lang/String; = "isocode"

.field public static final ATTR_LOCAL_SYMBOL:Ljava/lang/String; = "local-symbol"

.field public static final ATTR_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final ATTR_SMALLEST_FRACTION:Ljava/lang/String; = "smallest-fraction"

.field public static final TAG_CURRENCY:Ljava/lang/String; = "currency"


# instance fields
.field private mCommodities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Commodity;",
            ">;"
        }
    .end annotation
.end field

.field private mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getCommoditiesDbAdapter()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 57
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommodities:Ljava/util/List;

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    goto :goto_0
.end method


# virtual methods
.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    iget-object v1, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommodities:Ljava/util/List;

    sget-object v2, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 86
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v7, "currency"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const-string v7, "isocode"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "isoCode":Ljava/lang/String;
    const-string v7, "fullname"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "fullname":Ljava/lang/String;
    const-string v7, "namespace"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "namespace":Ljava/lang/String;
    const-string v7, "exchange-code"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "cusip":Ljava/lang/String;
    const-string v7, "smallest-fraction"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "smallestFraction":Ljava/lang/String;
    const-string v7, "local-symbol"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "localSymbol":Ljava/lang/String;
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v2, v3, v7}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-static {v5}, Lorg/gnucash/android/model/Commodity$Namespace;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity$Namespace;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/gnucash/android/model/Commodity;->setNamespace(Lorg/gnucash/android/model/Commodity$Namespace;)V

    .line 76
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Commodity;->setCusip(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Commodity;->setLocalSymbol(Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lorg/gnucash/android/importer/CommoditiesXmlHandler;->mCommodities:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v0    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v1    # "cusip":Ljava/lang/String;
    .end local v2    # "fullname":Ljava/lang/String;
    .end local v3    # "isoCode":Ljava/lang/String;
    .end local v4    # "localSymbol":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "smallestFraction":Ljava/lang/String;
    :cond_0
    return-void
.end method
