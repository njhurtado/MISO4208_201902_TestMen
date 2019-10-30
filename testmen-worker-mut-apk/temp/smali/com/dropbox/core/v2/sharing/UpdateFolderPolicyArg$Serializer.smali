.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UpdateFolderPolicyArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
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
    .line 351
    const/4 v8, 0x0

    .line 352
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 356
    :cond_0
    if-nez v8, :cond_a

    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "f_sharedFolderId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 359
    .local v2, "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    const/4 v3, 0x0

    .line 360
    .local v3, "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    const/4 v4, 0x0

    .line 361
    .local v4, "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    const/4 v5, 0x0

    .line 362
    .local v5, "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    const/4 v6, 0x0

    .line 363
    .local v6, "f_linkSettings":Lcom/dropbox/core/v2/sharing/LinkSettings;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_7

    .line 364
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 366
    const-string v9, "shared_folder_id"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 367
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_sharedFolderId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_sharedFolderId":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_1
    const-string v9, "member_policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    sget-object v9, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    check-cast v2, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .restart local v2    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    goto :goto_0

    .line 372
    :cond_2
    const-string v9, "acl_update_policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 373
    sget-object v9, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    check-cast v3, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .restart local v3    # "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    goto :goto_0

    .line 375
    :cond_3
    const-string v9, "viewer_info_policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 376
    sget-object v9, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    check-cast v4, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .restart local v4    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    goto :goto_0

    .line 378
    :cond_4
    const-string v9, "shared_link_policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 379
    sget-object v9, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    check-cast v5, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .restart local v5    # "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    goto :goto_0

    .line 381
    :cond_5
    const-string v9, "link_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 382
    sget-object v9, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_linkSettings":Lcom/dropbox/core/v2/sharing/LinkSettings;
    check-cast v6, Lcom/dropbox/core/v2/sharing/LinkSettings;

    .restart local v6    # "f_linkSettings":Lcom/dropbox/core/v2/sharing/LinkSettings;
    goto/16 :goto_0

    .line 385
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 388
    .end local v7    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 389
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"shared_folder_id\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 391
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    .line 396
    .local v0, "value":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    if-nez p2, :cond_9

    .line 397
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 399
    :cond_9
    return-object v0

    .line 394
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    .end local v1    # "f_sharedFolderId":Ljava/lang/String;
    .end local v2    # "f_memberPolicy":Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .end local v3    # "f_aclUpdatePolicy":Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .end local v4    # "f_viewerInfoPolicy":Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .end local v5    # "f_sharedLinkPolicy":Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .end local v6    # "f_linkSettings":Lcom/dropbox/core/v2/sharing/LinkSettings;
    :cond_a
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9
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
    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 318
    if-nez p3, :cond_0

    .line 319
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 321
    :cond_0
    const-string v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "member_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 327
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "acl_update_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 331
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v0, :cond_3

    .line 332
    const-string v0, "viewer_info_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 335
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v0, :cond_4

    .line 336
    const-string v0, "shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 339
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v0, :cond_5

    .line 340
    const-string v0, "link_settings"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 343
    :cond_5
    if-nez p3, :cond_6

    .line 344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 346
    :cond_6
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
    .line 313
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
