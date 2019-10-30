.class public Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;
.super Ljava/lang/Object;
.source "LinkHeaderFieldParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final relations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "tmp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->addFields(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->relations:Ljava/util/List;

    .line 68
    .end local v0    # "tmp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;>;"
    :goto_1
    return-void

    .line 66
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->relations:Ljava/util/List;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;>;"
    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->addFields(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->relations:Ljava/util/List;

    .line 54
    return-void
.end method

.method private addFields(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p2, "fieldValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;>;"
    const/16 v9, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "insideAngleBrackets":Z
    const/4 v4, 0x0

    .line 97
    .local v4, "insideDoubleQuotes":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 99
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    .local v0, "c":C
    if-eqz v3, :cond_2

    .line 102
    const/16 v8, 0x3e

    if-eq v0, v8, :cond_1

    move v3, v6

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v7

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-eqz v4, :cond_4

    .line 104
    if-eq v0, v9, :cond_3

    move v4, v6

    .line 105
    :goto_2
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_0

    .line 107
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    move v4, v7

    .line 104
    goto :goto_2

    .line 110
    :cond_4
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    move v3, v6

    .line 111
    :goto_3
    if-ne v0, v9, :cond_8

    move v4, v6

    .line 113
    :goto_4
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_0

    .line 114
    invoke-virtual {p2, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 117
    :try_start_0
    new-instance v6, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;

    invoke-direct {v6, v5}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_5
    :goto_5
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->addFields(Ljava/util/List;Ljava/lang/String;)V

    .line 136
    .end local v0    # "c":C
    .end local v5    # "v":Ljava/lang/String;
    :cond_6
    :goto_6
    return-void

    .restart local v0    # "c":C
    :cond_7
    move v3, v7

    .line 110
    goto :goto_3

    :cond_8
    move v4, v7

    .line 111
    goto :goto_4

    .line 118
    .restart local v5    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->log:Lorg/slf4j/Logger;

    const-string v7, "parse error in Link Header field value"

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 129
    .end local v0    # "c":C
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "v":Ljava/lang/String;
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 131
    :try_start_1
    new-instance v6, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;

    invoke-direct {v6, p2}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .restart local v1    # "ex":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->log:Lorg/slf4j/Logger;

    const-string v7, "parse error in Link Header field value"

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method


# virtual methods
.method public getFirstTargetForRelation(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "relationType"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser;->relations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;

    .line 74
    .local v4, "lr":Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->getParameters()Ljava/util/Map;

    move-result-object v7

    const-string v8, "rel"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "relationNames":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 78
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 80
    .local v6, "rn":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;->getTarget()Ljava/lang/String;

    move-result-object v7

    .line 87
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "lr":Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
    .end local v5    # "relationNames":Ljava/lang/String;
    .end local v6    # "rn":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 78
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "lr":Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
    .restart local v5    # "relationNames":Ljava/lang/String;
    .restart local v6    # "rn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "lr":Lorg/apache/jackrabbit/webdav/util/LinkHeaderFieldParser$LinkRelation;
    .end local v5    # "relationNames":Ljava/lang/String;
    .end local v6    # "rn":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method
