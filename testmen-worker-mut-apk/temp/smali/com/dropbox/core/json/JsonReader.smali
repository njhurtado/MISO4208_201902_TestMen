.class public abstract Lcom/dropbox/core/json/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/json/JsonReader$FileLoadException;,
        Lcom/dropbox/core/json/JsonReader$FieldMapping;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BinaryReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final BooleanReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final VoidReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    .line 176
    new-instance v0, Lcom/dropbox/core/json/JsonReader$1;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;

    .line 208
    new-instance v0, Lcom/dropbox/core/json/JsonReader$2;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 219
    new-instance v0, Lcom/dropbox/core/json/JsonReader$3;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 231
    new-instance v0, Lcom/dropbox/core/json/JsonReader$4;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$4;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 241
    new-instance v0, Lcom/dropbox/core/json/JsonReader$5;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$5;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 254
    new-instance v0, Lcom/dropbox/core/json/JsonReader$6;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$6;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 265
    new-instance v0, Lcom/dropbox/core/json/JsonReader$7;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$7;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 276
    new-instance v0, Lcom/dropbox/core/json/JsonReader$8;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$8;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    .line 292
    new-instance v0, Lcom/dropbox/core/json/JsonReader$9;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$9;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BinaryReader:Lcom/dropbox/core/json/JsonReader;

    .line 310
    new-instance v0, Lcom/dropbox/core/json/JsonReader$10;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$10;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    .line 344
    new-instance v0, Lcom/dropbox/core/json/JsonReader$11;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$11;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->VoidReader:Lcom/dropbox/core/json/JsonReader;

    .line 451
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expectArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 144
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v2, "expecting the end of an array (\"[\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 147
    .local v0, "loc":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 148
    return-object v0
.end method

.method public static expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v2, "expecting the start of an array (\"[\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 136
    .local v0, "loc":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 137
    return-object v0
.end method

.method public static expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "expecting the end of an object (\"}\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 127
    return-void
.end method

.method public static expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 113
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v2, "expecting the start of an object (\"{\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 116
    .local v0, "loc":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 117
    return-object v0
.end method

.method public static isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v1

    throw v1
.end method

.method public static readBoolean(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 3
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    .line 324
    .local v0, "b":Z
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return v0

    .line 327
    .end local v0    # "b":Z
    :catch_0
    move-exception v1

    .line 328
    .local v1, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v1}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v2

    throw v2
.end method

.method public static readDouble(Lcom/fasterxml/jackson/core/JsonParser;)D
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v2

    .line 337
    .local v2, "v":D
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-wide v2

    .line 339
    .end local v2    # "v":D
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v1

    throw v1
.end method

.method public static readEnum(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    .local p2, "catch_all":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_7

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 361
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->readTags(Lcom/fasterxml/jackson/core/JsonParser;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "tags":[Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_3

    .line 363
    sget-boolean v3, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget-object v3, v0, v5

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 364
    :cond_1
    aget-object v1, v0, v5

    .line 375
    .local v1, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 377
    move-object v2, p2

    .line 378
    :cond_2
    if-nez v2, :cond_6

    .line 379
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected one of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 366
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 368
    .restart local v1    # "text":Ljava/lang/String;
    sget-boolean v3, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    aget-object v3, v0, v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 369
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 370
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 373
    .end local v1    # "text":Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v4, "expecting a field name"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 380
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 392
    .end local v0    # "tags":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 383
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_8

    .line 384
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    const-string v4, "Expected a string value"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 385
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 386
    .restart local v1    # "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_9

    .line 388
    move-object v2, p2

    .line 389
    :cond_9
    if-nez v2, :cond_a

    .line 390
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected one of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 391
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1
.end method

.method public static readTags(Lcom/fasterxml/jackson/core/JsonParser;)[Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    const-string v2, ".tag"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 79
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string v2, "expected a string value for .tag field"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 83
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readUnsignedLong(Lcom/fasterxml/jackson/core/JsonParser;)J
    .locals 6
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    .line 190
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 191
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expecting a non-negative number, got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "v":J
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v1

    throw v1

    .line 193
    .end local v0    # "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    .restart local v2    # "v":J
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    return-wide v2
.end method

.method public static readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J
    .locals 4
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLong(Lcom/fasterxml/jackson/core/JsonParser;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public abstract read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation
.end method

.method public final readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    .local p3, "v":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFields(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReader$FileLoadException;
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 520
    :try_start_2
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v2
    :try_end_2
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 523
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    new-instance v2, Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;

    invoke-direct {v2, p1, v0}, Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;-><init>(Ljava/io/File;Lcom/dropbox/core/json/JsonReadException;)V

    throw v2

    .line 526
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    :catch_1
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/core/json/JsonReader$FileLoadException$IOError;

    invoke-direct {v2, p1, v0}, Lcom/dropbox/core/json/JsonReader$FileLoadException$IOError;-><init>(Ljava/io/File;Ljava/io/IOException;)V

    throw v2
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReader$FileLoadException;
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFromFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFromTags([Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 568
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The JSON library should ensure there\'s no tokens after the main value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 573
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->validate(Ljava/lang/Object;)V

    .line 574
    return-object v0
.end method

.method public readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "utf8Body"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    :try_start_0
    sget-object v2, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 458
    .local v1, "parser":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0, v1}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 460
    .end local v1    # "parser":Lcom/fasterxml/jackson/core/JsonParser;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v2

    throw v2
.end method

.method public readFully(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    :try_start_0
    sget-object v2, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 471
    .local v1, "parser":Lcom/fasterxml/jackson/core/JsonParser;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 474
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    throw v2
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    .end local v1    # "parser":Lcom/fasterxml/jackson/core/JsonParser;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v2

    throw v2

    .line 480
    .end local v0    # "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "IOException reading from String"

    invoke-static {v2, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public readFully([B)Ljava/lang/Object;
    .locals 3
    .param p1, "utf8Body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    :try_start_0
    sget-object v2, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 491
    .local v1, "parser":Lcom/fasterxml/jackson/core/JsonParser;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 494
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    throw v2
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 497
    .end local v1    # "parser":Lcom/fasterxml/jackson/core/JsonParser;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v2

    throw v2

    .line 500
    .end local v0    # "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "IOException reading from byte[]"

    invoke-static {v2, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-void
.end method
