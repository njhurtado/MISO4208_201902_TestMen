.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "CreateSharedLinkArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
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
    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 245
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 246
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_0
    if-nez v4, :cond_7

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "f_path":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 251
    .local v2, "f_shortUrl":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 252
    .local v1, "f_pendingUpload":Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 253
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 255
    const-string v6, "path"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 258
    :cond_1
    const-string v6, "short_url"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_shortUrl":Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2    # "f_shortUrl":Ljava/lang/Boolean;
    goto :goto_0

    .line 261
    :cond_2
    const-string v6, "pending_upload"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    sget-object v6, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_pendingUpload":Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    check-cast v1, Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .restart local v1    # "f_pendingUpload":Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    goto :goto_0

    .line 265
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 268
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 269
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"path\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v0, v6, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    .line 276
    .local v5, "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    if-nez p2, :cond_6

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 279
    :cond_6
    return-object v5

    .line 274
    .end local v0    # "f_path":Ljava/lang/String;
    .end local v1    # "f_pendingUpload":Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    .end local v2    # "f_shortUrl":Ljava/lang/Boolean;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
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
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p3, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 227
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 229
    const-string v0, "short_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "pending_upload"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 235
    :cond_1
    if-nez p3, :cond_2

    .line 236
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 238
    :cond_2
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
    .line 219
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
