.class Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;
.super Ljava/util/ArrayList;
.source "IfHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/header/IfHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfHeaderList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;",
        ">;",
        "Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderInterface;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/header/IfHeader$1;

    .prologue
    .line 821
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "etag"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matches: Trying to match token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", etag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfHeaderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;

    .line 842
    .local v1, "il":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;
    invoke-virtual {v1, p2, p3}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matches: Found match with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 844
    const/4 v2, 0x1

    .line 849
    .end local v1    # "il":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
