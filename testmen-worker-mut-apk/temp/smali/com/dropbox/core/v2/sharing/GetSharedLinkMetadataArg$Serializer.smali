.class Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetSharedLinkMetadataArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
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
    .line 250
    const/4 v4, 0x0

    .line 251
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 252
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 255
    :cond_0
    if-nez v4, :cond_7

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "f_url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 258
    .local v1, "f_path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 259
    .local v0, "f_linkPassword":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 262
    const-string v6, "url"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_url":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 265
    :cond_1
    const-string v6, "path"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 268
    :cond_2
    const-string v6, "link_password"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_linkPassword":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_linkPassword":Ljava/lang/String;
    goto :goto_0

    .line 272
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 275
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 276
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"url\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 278
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v5, v2, v1, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v5, "value":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    if-nez p2, :cond_6

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 286
    :cond_6
    return-object v5

    .line 281
    .end local v0    # "f_linkPassword":Ljava/lang/String;
    .end local v1    # "f_path":Ljava/lang/String;
    .end local v2    # "f_url":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
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
    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p3, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 232
    :cond_0
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 234
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 239
    const-string v0, "link_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->linkPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 242
    :cond_2
    if-nez p3, :cond_3

    .line 243
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 245
    :cond_3
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
    .line 224
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
