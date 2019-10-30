.class final Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    .locals 5
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "time_taken":Ljava/util/Date;
    const/4 v1, 0x0

    .line 402
    .local v1, "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "fieldName":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 405
    const-string v3, "lat_long"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    sget-object v3, Lcom/dropbox/core/v1/DbxEntry$File$Location;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    check-cast v1, Lcom/dropbox/core/v1/DbxEntry$File$Location;

    .restart local v1    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    goto :goto_0

    .line 407
    :cond_0
    const-string v3, "time_taken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    sget-object v3, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "time_taken":Ljava/util/Date;
    check-cast v2, Ljava/util/Date;

    .restart local v2    # "time_taken":Ljava/util/Date;
    goto :goto_0

    .line 410
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 413
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 414
    new-instance v3, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-direct {v3, v2, v1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;)V

    return-object v3
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
    .line 394
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    move-result-object v0

    return-object v0
.end method
