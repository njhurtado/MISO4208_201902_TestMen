.class final Lcom/dropbox/core/DbxAuthInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxAuthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAuthInfo;
    .locals 7
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v4

    .line 60
    .local v4, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v3, 0x0

    .line 61
    .local v3, "host":Lcom/dropbox/core/DbxHost;
    const/4 v0, 0x0

    .line 63
    .local v0, "accessToken":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 68
    :try_start_0
    const-string v5, "host"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    sget-object v5, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "host":Lcom/dropbox/core/DbxHost;
    check-cast v3, Lcom/dropbox/core/DbxHost;

    .restart local v3    # "host":Lcom/dropbox/core/DbxHost;
    goto :goto_0

    .line 71
    :cond_0
    const-string v5, "access_token"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    sget-object v5, Lcom/dropbox/core/DbxAuthInfo$1;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v2, v0}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessToken":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "accessToken":Ljava/lang/String;
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v3    # "host":Lcom/dropbox/core/DbxHost;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v1, v2}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v5

    throw v5

    .line 84
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v2    # "fieldName":Ljava/lang/String;
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v3    # "host":Lcom/dropbox/core/DbxHost;
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 86
    if-nez v0, :cond_3

    new-instance v5, Lcom/dropbox/core/json/JsonReadException;

    const-string v6, "missing field \"access_token\""

    invoke-direct {v5, v6, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v5

    .line 87
    :cond_3
    if-nez v3, :cond_4

    sget-object v3, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    .line 89
    :cond_4
    new-instance v5, Lcom/dropbox/core/DbxAuthInfo;

    invoke-direct {v5, v0, v3}, Lcom/dropbox/core/DbxAuthInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

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
    .line 53
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAuthInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAuthInfo;

    move-result-object v0

    return-object v0
.end method
