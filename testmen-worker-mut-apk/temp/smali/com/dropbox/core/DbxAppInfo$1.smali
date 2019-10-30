.class final Lcom/dropbox/core/DbxAppInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAppInfo;
    .locals 8
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v5

    .line 136
    .local v5, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v3, 0x0

    .line 137
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .local v4, "secret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "host":Lcom/dropbox/core/DbxHost;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 145
    :try_start_0
    const-string v6, "key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    sget-object v6, Lcom/dropbox/core/DbxAppInfo;->KeyReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v6, p1, v1, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "key":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 148
    :cond_0
    const-string v6, "secret"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    sget-object v6, Lcom/dropbox/core/DbxAppInfo;->SecretReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v6, p1, v1, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "secret":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "secret":Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_1
    const-string v6, "host"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    sget-object v6, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v6, p1, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "host":Lcom/dropbox/core/DbxHost;
    check-cast v2, Lcom/dropbox/core/DbxHost;

    .restart local v2    # "host":Lcom/dropbox/core/DbxHost;
    goto :goto_0

    .line 156
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v2    # "host":Lcom/dropbox/core/DbxHost;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "secret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v6

    throw v6

    .line 164
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v1    # "fieldName":Ljava/lang/String;
    .restart local v2    # "host":Lcom/dropbox/core/DbxHost;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "secret":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 166
    if-nez v3, :cond_4

    new-instance v6, Lcom/dropbox/core/json/JsonReadException;

    const-string v7, "missing field \"key\""

    invoke-direct {v6, v7, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v6

    .line 167
    :cond_4
    if-nez v4, :cond_5

    new-instance v6, Lcom/dropbox/core/json/JsonReadException;

    const-string v7, "missing field \"secret\""

    invoke-direct {v6, v7, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v6

    .line 168
    :cond_5
    if-nez v2, :cond_6

    sget-object v2, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    .line 170
    :cond_6
    new-instance v6, Lcom/dropbox/core/DbxAppInfo;

    invoke-direct {v6, v3, v4, v2}, Lcom/dropbox/core/DbxAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    return-object v6
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
    .line 129
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAppInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAppInfo;

    move-result-object v0

    return-object v0
.end method
