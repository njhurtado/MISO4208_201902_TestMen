.class final Lcom/dropbox/core/DbxAuthFinish$1;
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
        "Lcom/dropbox/core/DbxAuthFinish;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 9
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    .line 89
    .local v5, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v0, 0x0

    .line 90
    .local v0, "accessToken":Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, "tokenType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .local v6, "userId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 94
    .local v3, "state":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "fieldName":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 99
    :try_start_0
    const-string v7, "token_type"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    sget-object v7, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v2, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tokenType":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "tokenType":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_0
    const-string v7, "access_token"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    sget-object v7, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v2, v0}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessToken":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "accessToken":Ljava/lang/String;
    goto :goto_0

    .line 105
    :cond_1
    const-string v7, "uid"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v2, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "userId":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "userId":Ljava/lang/String;
    goto :goto_0

    .line 108
    :cond_2
    const-string v7, "state"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "state":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "state":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "tokenType":Ljava/lang/String;
    .end local v6    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v1, v2}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v7

    throw v7

    .line 121
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v2    # "fieldName":Ljava/lang/String;
    .restart local v0    # "accessToken":Ljava/lang/String;
    .restart local v3    # "state":Ljava/lang/String;
    .restart local v4    # "tokenType":Ljava/lang/String;
    .restart local v6    # "userId":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 123
    if-nez v4, :cond_5

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"token_type\""

    invoke-direct {v7, v8, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 124
    :cond_5
    if-nez v0, :cond_6

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"access_token\""

    invoke-direct {v7, v8, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 125
    :cond_6
    if-nez v6, :cond_7

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"uid\""

    invoke-direct {v7, v8, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 127
    :cond_7
    new-instance v7, Lcom/dropbox/core/DbxAuthFinish;

    invoke-direct {v7, v0, v6, v3}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
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
    .line 85
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAuthFinish$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method
