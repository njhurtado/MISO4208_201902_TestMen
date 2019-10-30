.class public Lorg/apache/jackrabbit/webdav/header/LabelHeader;
.super Ljava/lang/Object;
.source "LabelHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/jackrabbit/webdav/header/LabelHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not a valid label."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->label:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static parse(Lorg/apache/jackrabbit/webdav/WebdavRequest;)Lorg/apache/jackrabbit/webdav/header/LabelHeader;
    .locals 3
    .param p0, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;

    .prologue
    .line 54
    const-string v1, "Label"

    invoke-interface {p0, v1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "hv":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/LabelHeader;

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/header/LabelHeader;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Label"

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->label:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->label:Ljava/lang/String;

    return-object v0
.end method
