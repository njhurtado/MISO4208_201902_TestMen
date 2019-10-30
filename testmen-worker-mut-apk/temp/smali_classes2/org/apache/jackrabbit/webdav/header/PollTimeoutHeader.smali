.class public Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;
.super Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
.source "PollTimeoutHeader.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;-><init>(J)V

    .line 31
    return-void
.end method

.method public static parseHeader(Ljavax/servlet/http/HttpServletRequest;J)Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;
    .locals 5
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "defaultValue"    # J

    .prologue
    .line 48
    const-string v3, "PollTimeout"

    invoke-interface {p0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "timeoutStr":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;->parse(Ljava/lang/String;J)J

    move-result-wide v0

    .line 50
    .local v0, "timeout":J
    new-instance v3, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;

    invoke-direct {v3, v0, v1}, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;-><init>(J)V

    return-object v3
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "PollTimeout"

    return-object v0
.end method
