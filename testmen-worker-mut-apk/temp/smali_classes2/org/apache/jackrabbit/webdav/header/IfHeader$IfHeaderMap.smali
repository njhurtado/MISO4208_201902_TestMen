.class Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;
.super Ljava/util/HashMap;
.source "IfHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/header/IfHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfHeaderMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;",
        ">;",
        "Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/header/IfHeader$1;

    .prologue
    .line 861
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "etag"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matches: Trying to match resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;

    .line 880
    .local v0, "list":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;
    if-nez v0, :cond_0

    .line 881
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matches: No entry for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", assuming match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 882
    const/4 v1, 0x1

    .line 884
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
