.class Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ThumbnailArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ThumbnailArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ThumbnailArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 281
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 284
    :cond_0
    if-nez v4, :cond_7

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "f_path":Ljava/lang/String;
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 287
    .local v0, "f_format":Lcom/dropbox/core/v2/files/ThumbnailFormat;
    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 288
    .local v2, "f_size":Lcom/dropbox/core/v2/files/ThumbnailSize;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 291
    const-string v6, "path"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 292
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 294
    :cond_1
    const-string v6, "format"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailFormat;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_2
    const-string v6, "size"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailSize;

    move-result-object v2

    goto :goto_0

    .line 301
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 304
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 305
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"path\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 307
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v5, v1, v0, v2}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;)V

    .line 312
    .local v5, "value":Lcom/dropbox/core/v2/files/ThumbnailArg;
    if-nez p2, :cond_6

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 315
    :cond_6
    return-object v5

    .line 310
    .end local v0    # "f_format":Lcom/dropbox/core/v2/files/ThumbnailFormat;
    .end local v1    # "f_path":Ljava/lang/String;
    .end local v2    # "f_size":Lcom/dropbox/core/v2/files/ThumbnailSize;
    .end local v5    # "value":Lcom/dropbox/core/v2/files/ThumbnailArg;
    :cond_7
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/ThumbnailArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p3, :cond_0

    .line 263
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 265
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
    const-string v0, "format"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 269
    const-string v0, "size"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 271
    if-nez p3, :cond_1

    .line 272
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 274
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 257
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
