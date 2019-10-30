.class final Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    .locals 6
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    const/4 v3, 0x0

    .line 488
    .local v3, "time_taken":Ljava/util/Date;
    const/4 v0, 0x0

    .line 489
    .local v0, "duration":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_3

    .line 490
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "fieldName":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 492
    const-string v4, "lat_long"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    sget-object v4, Lcom/dropbox/core/v1/DbxEntry$File$Location;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    check-cast v2, Lcom/dropbox/core/v1/DbxEntry$File$Location;

    .restart local v2    # "location":Lcom/dropbox/core/v1/DbxEntry$File$Location;
    goto :goto_0

    .line 494
    :cond_0
    const-string v4, "time_taken"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    sget-object v4, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "time_taken":Ljava/util/Date;
    check-cast v3, Ljava/util/Date;

    .restart local v3    # "time_taken":Ljava/util/Date;
    goto :goto_0

    .line 496
    :cond_1
    const-string v4, "duration"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "duration":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "duration":Ljava/lang/Long;
    goto :goto_0

    .line 499
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 502
    .end local v1    # "fieldName":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 503
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-direct {v4, v3, v2, v0}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;Ljava/lang/Long;)V

    return-object v4
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
    .line 480
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    move-result-object v0

    return-object v0
.end method
