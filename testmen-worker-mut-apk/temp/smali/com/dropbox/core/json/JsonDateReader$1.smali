.class final Lcom/dropbox/core/json/JsonDateReader$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "JsonDateReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/json/JsonDateReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 19
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonDateReader$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;
    .locals 9
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    .line 25
    .local v3, "l":Lcom/fasterxml/jackson/core/JsonLocation;
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v0

    .line 26
    .local v0, "buffer":[C
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v5

    .line 27
    .local v5, "offset":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v4

    .line 28
    .local v4, "length":I
    invoke-static {v0, v5, v4}, Lcom/dropbox/core/json/JsonDateReader;->parseDropboxDate([CII)Ljava/util/Date;

    move-result-object v1

    .line 29
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    return-object v1

    .line 32
    .end local v0    # "buffer":[C
    .end local v1    # "d":Ljava/util/Date;
    .end local v4    # "length":I
    .end local v5    # "offset":I
    :catch_0
    move-exception v2

    .line 33
    .local v2, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v2}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v6

    throw v6

    .line 35
    .end local v2    # "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v2

    .line 36
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v6, Lcom/dropbox/core/json/JsonReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad date: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v6
.end method
