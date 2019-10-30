.class final Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    .locals 10
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v6

    .line 163
    .local v6, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v1, 0x0

    .line 164
    .local v1, "familiarName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 165
    .local v4, "givenName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "surname":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 171
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;->access$100()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "fi":I
    packed-switch v2, :pswitch_data_0

    .line 179
    :try_start_0
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", field = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "familiarName":Ljava/lang/String;
    .end local v4    # "givenName":Ljava/lang/String;
    .end local v5    # "surname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v0, v3}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v7

    throw v7

    .line 174
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v1    # "familiarName":Ljava/lang/String;
    .restart local v4    # "givenName":Ljava/lang/String;
    .restart local v5    # "surname":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v3, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "familiarName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "familiarName":Ljava/lang/String;
    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v3, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "givenName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "givenName":Ljava/lang/String;
    goto :goto_0

    .line 177
    :pswitch_3
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v7, p1, v3, v5}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "surname":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "surname":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v2    # "fi":I
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 189
    if-nez v1, :cond_1

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"familiarName\""

    invoke-direct {v7, v8, v6}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 190
    :cond_1
    if-nez v5, :cond_2

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"surname\""

    invoke-direct {v7, v8, v6}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 191
    :cond_2
    if-nez v4, :cond_3

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v8, "missing field \"givenName\""

    invoke-direct {v7, v8, v6}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 193
    :cond_3
    new-instance v7, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    invoke-direct {v7, v1, v4, v5}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 173
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 157
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    move-result-object v0

    return-object v0
.end method
