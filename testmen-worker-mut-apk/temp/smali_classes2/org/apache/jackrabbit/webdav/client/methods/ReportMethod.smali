.class public Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "ReportMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final isDeep:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "reportInfo"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(I)V

    .line 41
    .local v0, "dh":Lorg/apache/jackrabbit/webdav/header/DepthHeader;
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;->isDeep:Z

    .line 43
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;->setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 45
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "REPORT"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    const/16 v3, 0xcf

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-boolean v2, p0, Lorg/apache/jackrabbit/webdav/client/methods/ReportMethod;->isDeep:Z

    if-eqz v2, :cond_1

    .line 68
    if-ne p1, v3, :cond_0

    .line 70
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
