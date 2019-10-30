.class final Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullableStructSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StructSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StructSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StructSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer<TT;>;"
    .local p1, "underlying":Lcom/dropbox/core/stone/StructSerializer;, "Lcom/dropbox/core/stone/StructSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    .line 253
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 258
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 1
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;, "Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 267
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    goto :goto_0
.end method
