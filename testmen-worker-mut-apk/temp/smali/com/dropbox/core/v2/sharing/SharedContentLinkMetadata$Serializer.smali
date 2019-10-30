.class Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedContentLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v9, 0x0

    .line 225
    .local v9, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 226
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 227
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    .line 229
    :cond_0
    if-nez v9, :cond_e

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    const/4 v2, 0x0

    .line 232
    .local v2, "f_currentAudience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    const/4 v3, 0x0

    .line 233
    .local v3, "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    const/4 v7, 0x0

    .line 234
    .local v7, "f_passwordProtected":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 235
    .local v5, "f_url":Ljava/lang/String;
    const/4 v6, 0x0

    .line 236
    .local v6, "f_expiry":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v10, :cond_7

    .line 237
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 239
    const-string v4, "audience_options"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    goto :goto_0

    .line 242
    :cond_1
    const-string v4, "current_audience"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkAudience;

    move-result-object v2

    goto :goto_0

    .line 245
    :cond_2
    const-string v4, "link_permissions"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    goto :goto_0

    .line 248
    :cond_3
    const-string v4, "password_protected"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_passwordProtected":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "f_passwordProtected":Ljava/lang/Boolean;
    goto :goto_0

    .line 251
    :cond_4
    const-string v4, "url"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_url":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_5
    const-string v4, "expiry"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 255
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_expiry":Ljava/util/Date;
    check-cast v6, Ljava/util/Date;

    .restart local v6    # "f_expiry":Ljava/util/Date;
    goto/16 :goto_0

    .line 258
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 261
    .end local v8    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 262
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"audience_options\" missing."

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_8
    if-nez v2, :cond_9

    .line 265
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"current_audience\" missing."

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_9
    if-nez v3, :cond_a

    .line 268
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"link_permissions\" missing."

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_a
    if-nez v7, :cond_b

    .line 271
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"password_protected\" missing."

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 273
    :cond_b
    if-nez v5, :cond_c

    .line 274
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"url\" missing."

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_c
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/lang/String;Ljava/util/Date;)V

    .line 281
    .local v0, "value":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    if-nez p2, :cond_d

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 284
    :cond_d
    return-object v0

    .line 279
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .end local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .end local v2    # "f_currentAudience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    .end local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    .end local v5    # "f_url":Ljava/lang/String;
    .end local v6    # "f_expiry":Ljava/util/Date;
    .end local v7    # "f_passwordProtected":Ljava/lang/Boolean;
    :cond_e
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p3, :cond_0

    .line 200
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 202
    :cond_0
    const-string v0, "audience_options"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 204
    const-string v0, "current_audience"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 206
    const-string v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 208
    const-string v0, "password_protected"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->passwordProtected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 210
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 212
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "expiry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->expiry:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 216
    :cond_1
    if-nez p3, :cond_2

    .line 217
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 219
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
    .line 194
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
