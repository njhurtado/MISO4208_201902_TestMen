.class Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "LinkPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkPermissions;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkPermissions;
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
    .line 275
    const/4 v5, 0x0

    .line 276
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 278
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 280
    :cond_0
    if-nez v5, :cond_8

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "f_canRevoke":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 283
    .local v2, "f_resolvedVisibility":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    const/4 v1, 0x0

    .line 284
    .local v1, "f_requestedVisibility":Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    const/4 v3, 0x0

    .line 285
    .local v3, "f_revokeFailureReason":Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 288
    const-string v7, "can_revoke"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_canRevoke":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "f_canRevoke":Ljava/lang/Boolean;
    goto :goto_0

    .line 291
    :cond_1
    const-string v7, "resolved_visibility"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    sget-object v7, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_resolvedVisibility":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    check-cast v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "f_resolvedVisibility":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    goto :goto_0

    .line 294
    :cond_2
    const-string v7, "requested_visibility"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    sget-object v7, Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_requestedVisibility":Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    check-cast v1, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .restart local v1    # "f_requestedVisibility":Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    goto :goto_0

    .line 297
    :cond_3
    const-string v7, "revoke_failure_reason"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 298
    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_revokeFailureReason":Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    check-cast v3, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .restart local v3    # "f_revokeFailureReason":Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    goto :goto_0

    .line 301
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 304
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 305
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"can_revoke\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 307
    :cond_6
    new-instance v6, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v7, v2, v1, v3}, Lcom/dropbox/core/v2/sharing/LinkPermissions;-><init>(ZLcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/dropbox/core/v2/sharing/RequestedVisibility;Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;)V

    .line 312
    .local v6, "value":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    if-nez p2, :cond_7

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 315
    :cond_7
    return-object v6

    .line 310
    .end local v0    # "f_canRevoke":Ljava/lang/Boolean;
    .end local v1    # "f_requestedVisibility":Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .end local v2    # "f_resolvedVisibility":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .end local v3    # "f_revokeFailureReason":Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    .end local v6    # "value":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    :cond_8
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
    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkPermissions;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkPermissions;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 250
    if-nez p3, :cond_0

    .line 251
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 253
    :cond_0
    const-string v0, "can_revoke"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 255
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "resolved_visibility"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 259
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "requested_visibility"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RequestedVisibility$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 263
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    if-eqz v0, :cond_3

    .line 264
    const-string v0, "revoke_failure_reason"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
    :cond_3
    if-nez p3, :cond_4

    .line 268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 270
    :cond_4
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
    .line 245
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkPermissions;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
