.class final Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DateSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 199
    :try_start_0
    invoke-static {v1}, Lcom/dropbox/core/stone/Util;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed timestamp: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 186
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->serialize(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lcom/dropbox/core/stone/Util;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 192
    return-void
.end method
