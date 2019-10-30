.class final Lcom/dropbox/core/DbxHost$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxHost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxHost;
    .locals 12
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 118
    .local v6, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v9, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "s":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 121
    invoke-static {v5}, Lcom/dropbox/core/DbxHost;->access$000(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;

    move-result-object v9

    .line 164
    .end local v5    # "s":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 122
    :cond_0
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v9, :cond_a

    .line 123
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v7

    .line 124
    .local v7, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p1}, Lcom/dropbox/core/DbxHost$1;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "api":Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "content":Ljava/lang/String;
    const/4 v8, 0x0

    .line 129
    .local v8, "web":Ljava/lang/String;
    const/4 v4, 0x0

    .line 131
    .local v4, "notify":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_5

    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 136
    :try_start_0
    const-string v9, "api"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 137
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p1, v3, v0}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "api":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "api":Ljava/lang/String;
    goto :goto_1

    .line 139
    :cond_1
    const-string v9, "content"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p1, v3, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "content":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_1

    .line 142
    :cond_2
    const-string v9, "web"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p1, v3, v8}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "web":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "web":Ljava/lang/String;
    goto :goto_1

    .line 145
    :cond_3
    const-string v9, "notify"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p1, v3, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "notify":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "notify":Ljava/lang/String;
    goto :goto_1

    .line 149
    :cond_4
    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "unknown field"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "notify":Ljava/lang/String;
    .end local v8    # "web":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v2, v3}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v9

    throw v9

    .line 157
    .end local v2    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v0    # "api":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v4    # "notify":Ljava/lang/String;
    .restart local v8    # "web":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 159
    if-nez v0, :cond_6

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"api\""

    invoke-direct {v9, v10, v7}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 160
    :cond_6
    if-nez v1, :cond_7

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"content\""

    invoke-direct {v9, v10, v7}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 161
    :cond_7
    if-nez v8, :cond_8

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"web\""

    invoke-direct {v9, v10, v7}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 162
    :cond_8
    if-nez v4, :cond_9

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"notify\""

    invoke-direct {v9, v10, v7}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 164
    :cond_9
    new-instance v9, Lcom/dropbox/core/DbxHost;

    invoke-direct {v9, v0, v1, v8, v4}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "notify":Ljava/lang/String;
    .end local v7    # "top":Lcom/fasterxml/jackson/core/JsonLocation;
    .end local v8    # "web":Ljava/lang/String;
    :cond_a
    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "expecting a string or an object"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9
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
    .line 114
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxHost$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxHost;

    move-result-object v0

    return-object v0
.end method
