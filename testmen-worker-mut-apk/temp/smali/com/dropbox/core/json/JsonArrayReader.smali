.class public Lcom/dropbox/core/json/JsonArrayReader;
.super Lcom/dropbox/core/json/JsonReader;
.source "JsonArrayReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field public final collector:Lcom/dropbox/core/util/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/util/Collector",
            "<TT;+T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final elementReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;",
            "Lcom/dropbox/core/util/Collector",
            "<TT;+T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/dropbox/core/json/JsonArrayReader;, "Lcom/dropbox/core/json/JsonArrayReader<TT;TL;>;"
    .local p1, "elementReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<+TT;>;"
    .local p2, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<TT;+TL;>;"
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dropbox/core/json/JsonArrayReader;->elementReader:Lcom/dropbox/core/json/JsonReader;

    .line 17
    iput-object p2, p0, Lcom/dropbox/core/json/JsonArrayReader;->collector:Lcom/dropbox/core/util/Collector;

    .line 18
    return-void
.end method

.method public static mk(Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/json/JsonArrayReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;)",
            "Lcom/dropbox/core/json/JsonArrayReader",
            "<TT;",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "elementReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<+TT;>;"
    new-instance v0, Lcom/dropbox/core/json/JsonArrayReader;

    new-instance v1, Lcom/dropbox/core/util/Collector$ArrayListCollector;

    invoke-direct {v1}, Lcom/dropbox/core/util/Collector$ArrayListCollector;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/dropbox/core/json/JsonArrayReader;-><init>(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)V

    return-object v0
.end method

.method public static mk(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/json/JsonArrayReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;",
            "Lcom/dropbox/core/util/Collector",
            "<TT;+T",
            "L;",
            ">;)",
            "Lcom/dropbox/core/json/JsonArrayReader",
            "<TT;T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "elementReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<+TT;>;"
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<TT;+TL;>;"
    new-instance v0, Lcom/dropbox/core/json/JsonArrayReader;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/json/JsonArrayReader;-><init>(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)V

    return-object v0
.end method

.method public static read(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .param p2, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;",
            "Lcom/dropbox/core/util/Collector",
            "<TT;+T",
            "L;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "elementReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<+TT;>;"
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<TT;+TL;>;"
    invoke-static {p2}, Lcom/dropbox/core/json/JsonArrayReader;->expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "index":I
    :goto_0
    invoke-static {p2}, Lcom/dropbox/core/json/JsonArrayReader;->isArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v2}, Lcom/dropbox/core/util/Collector;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v3

    throw v3

    .line 53
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 54
    invoke-virtual {p1}, Lcom/dropbox/core/util/Collector;->finish()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/dropbox/core/json/JsonArrayReader;, "Lcom/dropbox/core/json/JsonArrayReader<TT;TL;>;"
    iget-object v0, p0, Lcom/dropbox/core/json/JsonArrayReader;->elementReader:Lcom/dropbox/core/json/JsonReader;

    iget-object v1, p0, Lcom/dropbox/core/json/JsonArrayReader;->collector:Lcom/dropbox/core/util/Collector;

    invoke-static {v0, v1, p1}, Lcom/dropbox/core/json/JsonArrayReader;->read(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
