.class Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderPolicy;
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
    .line 319
    const/4 v7, 0x0

    .line 320
    .local v7, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 322
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v7

    .line 324
    :cond_0
    if-nez v7, :cond_a

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    const/4 v2, 0x0

    .line 327
    .local v2, "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    const/4 v3, 0x0

    .line 328
    .local v3, "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    const/4 v4, 0x0

    .line 329
    .local v4, "f_resolvedMemberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    const/4 v5, 0x0

    .line 330
    .local v5, "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_6

    .line 331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 333
    const-string v8, "acl_update_policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 334
    sget-object v8, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-virtual {v8, p1}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    move-result-object v1

    goto :goto_0

    .line 336
    :cond_1
    const-string v8, "shared_link_policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 337
    sget-object v8, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-virtual {v8, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    move-result-object v2

    goto :goto_0

    .line 339
    :cond_2
    const-string v8, "member_policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 340
    sget-object v8, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    check-cast v3, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .restart local v3    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    goto :goto_0

    .line 342
    :cond_3
    const-string v8, "resolved_member_policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 343
    sget-object v8, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_resolvedMemberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    check-cast v4, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .restart local v4    # "f_resolvedMemberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    goto :goto_0

    .line 345
    :cond_4
    const-string v8, "viewer_info_policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 346
    sget-object v8, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v8}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    check-cast v5, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .restart local v5    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    goto :goto_0

    .line 349
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 352
    .end local v6    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 353
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"acl_update_policy\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 355
    :cond_7
    if-nez v2, :cond_8

    .line 356
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"shared_link_policy\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 358
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/FolderPolicy;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 363
    .local v0, "value":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    if-nez p2, :cond_9

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 366
    :cond_9
    return-object v0

    .line 361
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .end local v1    # "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .end local v2    # "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .end local v3    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .end local v4    # "f_resolvedMemberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .end local v5    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    :cond_a
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8
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
    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FolderPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p3, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 295
    :cond_0
    const-string v0, "acl_update_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 297
    const-string v0, "shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 299
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "member_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 303
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "resolved_member_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 307
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v0, :cond_3

    .line 308
    const-string v0, "viewer_info_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 311
    :cond_3
    if-nez p3, :cond_4

    .line 312
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 314
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
    .line 287
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
