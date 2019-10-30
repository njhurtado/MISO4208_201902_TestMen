.class public Lorg/apache/jackrabbit/webdav/header/DepthHeader;
.super Ljava/lang/Object;
.source "DepthHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final depth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 41
    :cond_0
    iput p1, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    .line 45
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isDeep"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static depthToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "depth"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v1, "infinity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const v0, 0x7fffffff

    .line 126
    .local v0, "d":I
    :goto_0
    return v0

    .line 119
    .end local v0    # "d":I
    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v0, 0x0

    .restart local v0    # "d":I
    goto :goto_0

    .line 121
    .end local v0    # "d":I
    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    const/4 v0, 0x1

    .restart local v0    # "d":I
    goto :goto_0

    .line 124
    .end local v0    # "d":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid depth value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse(Ljavax/servlet/http/HttpServletRequest;I)Lorg/apache/jackrabbit/webdav/header/DepthHeader;
    .locals 3
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "defaultValue"    # I

    .prologue
    .line 99
    const-string v1, "Depth"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-direct {v1, p1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(I)V

    .line 103
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depthToInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    return v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Depth"

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    iget v0, p0, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->depth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "infinity"

    goto :goto_0
.end method
