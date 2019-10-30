.class Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntryEtag;
.super Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
.source "IfHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/header/IfHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfListEntryEtag"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;
    .param p2, "positive"    # Z

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;-><init>(Ljava/lang/String;Z)V

    .line 689
    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    const-string v0, "ETag"

    return-object v0
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 706
    invoke-super {p0, p2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
