.class public Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "SearchMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "languageNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 41
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;

    invoke-direct {v0, p3, p4, p2}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    .line 44
    .local v0, "searchInfo":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 46
    .end local v0    # "searchInfo":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/search/SearchInfo;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "searchInfo"    # Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/SearchMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "SEARCH"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 70
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
