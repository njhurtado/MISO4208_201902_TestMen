.class final Lcom/dropbox/core/DbxAuthFinish$3;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAuthFinish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxAuthFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
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
    .line 148
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAuthFinish$3;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 5
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "v":Ljava/lang/String;
    invoke-static {v2}, Lcom/dropbox/core/DbxAppInfo;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    invoke-static {v1}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v3

    throw v3

    .line 157
    .end local v1    # "ex":Lcom/fasterxml/jackson/core/JsonParseException;
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v2    # "v":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    return-object v2
.end method
