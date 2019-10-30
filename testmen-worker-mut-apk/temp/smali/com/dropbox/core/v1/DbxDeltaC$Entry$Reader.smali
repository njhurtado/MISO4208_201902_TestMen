.class public final Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDeltaC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxDeltaC$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
        "<TMD;>;>;"
    }
.end annotation


# instance fields
.field public final metadataReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader<TMD;>;"
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 245
    return-void
.end method

.method public static read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;
    .locals 6
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 257
    .local v0, "arrayStart":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string v5, "expecting a two-element array of [path, metadata], found a zero-element array"

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 263
    :cond_0
    :try_start_0
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v4, p0}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .local v2, "lcPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string v5, "expecting a two-element array of [path, metadata], found a one-element array"

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 265
    .end local v2    # "lcPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ex":Lcom/dropbox/core/json/JsonReadException;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v4

    throw v4

    .line 275
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v2    # "lcPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/core/util/Dumpable;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .local v3, "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string v5, "expecting a two-element array of [path, metadata], found more than two elements"

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 277
    .end local v3    # "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    :catch_1
    move-exception v1

    .line 278
    .restart local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v4

    throw v4

    .line 285
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v3    # "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 287
    new-instance v4, Lcom/dropbox/core/v1/DbxDeltaC$Entry;

    invoke-direct {v4, v2, v3}, Lcom/dropbox/core/v1/DbxDeltaC$Entry;-><init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V

    return-object v4
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;
    .locals 1
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader<TMD;>;"
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;

    move-result-object v0

    return-object v0
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
    .line 238
    .local p0, "this":Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader<TMD;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;

    move-result-object v0

    return-object v0
.end method
