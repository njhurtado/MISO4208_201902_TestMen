.class public final Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDelta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxDelta$Entry;
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
        "Lcom/dropbox/core/v1/DbxDelta$Entry",
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
    .line 242
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Entry$Reader<TMD;>;"
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 244
    return-void
.end method

.method public static read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta$Entry;
    .locals 7
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)",
            "Lcom/dropbox/core/v1/DbxDelta$Entry",
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
    .line 254
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 256
    .local v0, "arrayStart":Lcom/fasterxml/jackson/core/JsonLocation;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string v5, "expecting a two-element array of [path, metadata], found a zero-element array"

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 262
    :cond_0
    :try_start_0
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v4, p0}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .local v2, "lcPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expecting a two-element array of [path, metadata], found a one-element array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 264
    .end local v2    # "lcPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ex":Lcom/dropbox/core/json/JsonReadException;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v4

    throw v4

    .line 274
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v2    # "lcPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/core/util/Dumpable;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .local v3, "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 281
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expecting a two-element array of [path, metadata], found non \"]\" token after the two elements: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v4

    .line 276
    .end local v3    # "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    :catch_1
    move-exception v1

    .line 277
    .restart local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v4

    throw v4

    .line 284
    .end local v1    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v3    # "metadata":Lcom/dropbox/core/util/Dumpable;, "TMD;"
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 286
    new-instance v4, Lcom/dropbox/core/v1/DbxDelta$Entry;

    invoke-direct {v4, v2, v3}, Lcom/dropbox/core/v1/DbxDelta$Entry;-><init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V

    return-object v4
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDelta$Entry;
    .locals 1
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/dropbox/core/v1/DbxDelta$Entry",
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
    .line 248
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Entry$Reader<TMD;>;"
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta$Entry;

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
    .line 237
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Entry$Reader<TMD;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDelta$Entry;

    move-result-object v0

    return-object v0
.end method
