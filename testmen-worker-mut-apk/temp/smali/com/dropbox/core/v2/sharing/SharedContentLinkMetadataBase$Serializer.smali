.class Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedContentLinkMetadataBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v8, 0x0

    .line 233
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 234
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 235
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 237
    :cond_0
    if-nez v8, :cond_c

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    const/4 v2, 0x0

    .line 240
    .local v2, "f_currentAudience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    const/4 v3, 0x0

    .line 241
    .local v3, "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    const/4 v6, 0x0

    .line 242
    .local v6, "f_passwordProtected":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 243
    .local v5, "f_expiry":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v9, :cond_6

    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 246
    const-string v4, "audience_options"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    goto :goto_0

    .line 249
    :cond_1
    const-string v4, "current_audience"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkAudience;

    move-result-object v2

    goto :goto_0

    .line 252
    :cond_2
    const-string v4, "link_permissions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    sget-object v4, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    goto :goto_0

    .line 255
    :cond_3
    const-string v4, "password_protected"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_passwordProtected":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_passwordProtected":Ljava/lang/Boolean;
    goto :goto_0

    .line 258
    :cond_4
    const-string v4, "expiry"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 259
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_expiry":Ljava/util/Date;
    check-cast v5, Ljava/util/Date;

    .restart local v5    # "f_expiry":Ljava/util/Date;
    goto :goto_0

    .line 262
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 265
    .end local v7    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 266
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"audience_options\" missing."

    invoke-direct {v4, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_7
    if-nez v2, :cond_8

    .line 269
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"current_audience\" missing."

    invoke-direct {v4, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 271
    :cond_8
    if-nez v3, :cond_9

    .line 272
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"link_permissions\" missing."

    invoke-direct {v4, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_9
    if-nez v6, :cond_a

    .line 275
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"password_protected\" missing."

    invoke-direct {v4, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_a
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/util/Date;)V

    .line 282
    .local v0, "value":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    if-nez p2, :cond_b

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 285
    :cond_b
    return-object v0

    .line 280
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .end local v1    # "f_audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .end local v2    # "f_currentAudience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    .end local v3    # "f_linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    .end local v5    # "f_expiry":Ljava/util/Date;
    .end local v6    # "f_passwordProtected":Ljava/lang/Boolean;
    :cond_c
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p3, :cond_0

    .line 210
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 212
    :cond_0
    const-string v0, "audience_options"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 214
    const-string v0, "current_audience"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 216
    const-string v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 218
    const-string v0, "password_protected"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 220
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "expiry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 224
    :cond_1
    if-nez p3, :cond_2

    .line 225
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 227
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
    .line 204
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
