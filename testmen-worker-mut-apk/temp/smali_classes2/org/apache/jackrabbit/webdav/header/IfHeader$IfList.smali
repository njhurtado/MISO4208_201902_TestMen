.class Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;
.super Ljava/util/ArrayList;
.source "IfHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/header/IfHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/header/IfHeader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/header/IfHeader$1;

    .prologue
    .line 733
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 733
    check-cast p2, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->add(ILorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)V

    return-void
.end method

.method public add(ILorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "entry"    # Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;

    .prologue
    .line 758
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 759
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 733
    check-cast p1, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->add(Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;

    .prologue
    .line 744
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match: Trying to match token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", etag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 775
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;

    .line 776
    .local v1, "ile":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
    invoke-virtual {v1, p1, p2}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 777
    invoke-static {}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->access$300()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match: Entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 778
    const/4 v2, 0x0

    .line 783
    .end local v1    # "ile":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
    :goto_1
    return v2

    .line 774
    .restart local v1    # "ile":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    .end local v1    # "ile":Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
