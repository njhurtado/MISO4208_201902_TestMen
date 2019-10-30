.class final Lcom/dropbox/core/json/JsonReader$9;
.super Lcom/dropbox/core/json/JsonReader;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/json/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader$9;->read(Lcom/fasterxml/jackson/core/JsonParser;)[B

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/fasterxml/jackson/core/JsonParser;)[B
    .locals 3
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue()[B

    move-result-object v1

    .line 301
    .local v1, "v":[B
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-object v1

    .line 304
    .end local v1    # "v":[B
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v2

    throw v2
.end method
