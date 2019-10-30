.class public Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderMaybeDeleted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field private final collector:Lcom/dropbox/core/util/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/util/Collector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted<TC;>;"
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<Lcom/dropbox/core/v1/DbxEntry;+TC;>;"
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;->collector:Lcom/dropbox/core/util/Collector;

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted<TC;>;"
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;->collector:Lcom/dropbox/core/util/Collector;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->readMaybeDeleted(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

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
    .line 780
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted<TC;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method
