.class Lcom/dropbox/core/v2/files/RelocationArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RelocationArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/RelocationArg;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 298
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 299
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 301
    :cond_0
    if-nez v5, :cond_9

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "f_fromPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 304
    .local v3, "f_toPath":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    .local v0, "f_allowSharedFolder":Ljava/lang/Boolean;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 306
    .local v1, "f_autorename":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 307
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 309
    const-string v7, "from_path"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_fromPath":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_fromPath":Ljava/lang/String;
    goto :goto_0

    .line 312
    :cond_1
    const-string v7, "to_path"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_toPath":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_toPath":Ljava/lang/String;
    goto :goto_0

    .line 315
    :cond_2
    const-string v7, "allow_shared_folder"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_allowSharedFolder":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "f_allowSharedFolder":Ljava/lang/Boolean;
    goto :goto_0

    .line 318
    :cond_3
    const-string v7, "autorename"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 319
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_autorename":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_autorename":Ljava/lang/Boolean;
    goto :goto_0

    .line 322
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 325
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 326
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"from_path\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 328
    :cond_6
    if-nez v3, :cond_7

    .line 329
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"to_path\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 331
    :cond_7
    new-instance v6, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {v6, v2, v3, v7, v8}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 336
    .local v6, "value":Lcom/dropbox/core/v2/files/RelocationArg;
    if-nez p2, :cond_8

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 339
    :cond_8
    return-object v6

    .line 334
    .end local v0    # "f_allowSharedFolder":Ljava/lang/Boolean;
    .end local v1    # "f_autorename":Ljava/lang/Boolean;
    .end local v2    # "f_fromPath":Ljava/lang/String;
    .end local v3    # "f_toPath":Ljava/lang/String;
    .end local v6    # "value":Lcom/dropbox/core/v2/files/RelocationArg;
    :cond_9
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/RelocationArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/RelocationArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p3, :cond_0

    .line 278
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 280
    :cond_0
    const-string v0, "from_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 282
    const-string v0, "to_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 284
    const-string v0, "allow_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 286
    const-string v0, "autorename"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 288
    if-nez p3, :cond_1

    .line 289
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 291
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
    .line 272
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
