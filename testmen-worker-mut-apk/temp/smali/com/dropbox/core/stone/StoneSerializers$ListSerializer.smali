.class final Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$ListSerializer<TT;>;"
    .local p1, "underlying":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$ListSerializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$ListSerializer<TT;>;"
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->expectStartArray(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 315
    iget-object v2, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->expectEndArray(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 319
    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$ListSerializer<TT;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$ListSerializer<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v2, v0, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 307
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 308
    return-void
.end method
