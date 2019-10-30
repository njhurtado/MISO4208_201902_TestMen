.class public Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;
.super Ljava/lang/Object;
.source "OverwriteHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;


# static fields
.field public static final OVERWRITE_FALSE:Ljava/lang/String; = "F"

.field public static final OVERWRITE_TRUE:Ljava/lang/String; = "T"

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final doOverwrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v1, "Overwrite"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "overwriteHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->doOverwrite:Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->doOverwrite:Z

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "doOverwrite"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->doOverwrite:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Overwrite"

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->doOverwrite:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "F"

    goto :goto_0
.end method

.method public isOverwrite()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->doOverwrite:Z

    return v0
.end method
