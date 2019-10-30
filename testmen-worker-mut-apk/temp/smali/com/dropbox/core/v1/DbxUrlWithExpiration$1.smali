.class final Lcom/dropbox/core/v1/DbxUrlWithExpiration$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxUrlWithExpiration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxUrlWithExpiration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxUrlWithExpiration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxUrlWithExpiration;
    .locals 7
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    .line 31
    .local v3, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v4, 0x0

    .line 32
    .local v4, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 34
    .local v1, "expires":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 39
    :try_start_0
    const-string v5, "url"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    sget-object v5, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v2, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "url":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_0

    .line 42
    :cond_0
    const-string v5, "expires"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    sget-object v5, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v2, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "expires":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1    # "expires":Ljava/util/Date;
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "expires":Ljava/util/Date;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v0, v2}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v5

    throw v5

    .line 54
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v2    # "fieldName":Ljava/lang/String;
    .restart local v1    # "expires":Ljava/util/Date;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 56
    if-nez v4, :cond_3

    new-instance v5, Lcom/dropbox/core/json/JsonReadException;

    const-string v6, "missing field \"url\""

    invoke-direct {v5, v6, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v5

    .line 57
    :cond_3
    if-nez v1, :cond_4

    new-instance v5, Lcom/dropbox/core/json/JsonReadException;

    const-string v6, "missing field \"expires\""

    invoke-direct {v5, v6, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v5

    .line 59
    :cond_4
    new-instance v5, Lcom/dropbox/core/v1/DbxUrlWithExpiration;

    invoke-direct {v5, v4, v1}, Lcom/dropbox/core/v1/DbxUrlWithExpiration;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v5
.end method

.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxUrlWithExpiration$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxUrlWithExpiration;

    move-result-object v0

    return-object v0
.end method
