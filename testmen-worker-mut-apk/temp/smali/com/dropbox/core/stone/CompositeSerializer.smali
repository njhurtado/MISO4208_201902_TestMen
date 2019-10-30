.class public abstract Lcom/dropbox/core/stone/CompositeSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "CompositeSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final TAG_FIELD:Ljava/lang/String; = ".tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/dropbox/core/stone/CompositeSerializer;, "Lcom/dropbox/core/stone/CompositeSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method

.method protected static hasTag(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const-string v0, ".tag"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Lcom/dropbox/core/stone/CompositeSerializer;->hasTag(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 23
    invoke-static {p0}, Lcom/dropbox/core/stone/CompositeSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0
.end method


# virtual methods
.method protected writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/dropbox/core/stone/CompositeSerializer;, "Lcom/dropbox/core/stone/CompositeSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 31
    const-string v0, ".tag"

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
