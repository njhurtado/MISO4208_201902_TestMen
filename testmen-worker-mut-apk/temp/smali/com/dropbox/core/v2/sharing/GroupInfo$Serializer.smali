.class Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GroupInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/GroupInfo;
    .locals 16
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v15, 0x0

    .line 340
    .local v15, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 341
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 342
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v15

    .line 344
    :cond_0
    if-nez v15, :cond_13

    .line 345
    const/4 v2, 0x0

    .line 346
    .local v2, "f_groupName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 347
    .local v3, "f_groupId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 348
    .local v4, "f_groupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    const/4 v5, 0x0

    .line 349
    .local v5, "f_groupType":Lcom/dropbox/core/v2/teamcommon/GroupType;
    const/4 v11, 0x0

    .line 350
    .local v11, "f_isMember":Ljava/lang/Boolean;
    const/4 v12, 0x0

    .line 351
    .local v12, "f_isOwner":Ljava/lang/Boolean;
    const/4 v13, 0x0

    .line 352
    .local v13, "f_sameTeam":Ljava/lang/Boolean;
    const/4 v9, 0x0

    .line 353
    .local v9, "f_groupExternalId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 354
    .local v10, "f_memberCount":Ljava/lang/Long;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_a

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v14

    .line 356
    .local v14, "field":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 357
    const-string v6, "group_name"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_groupName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_groupName":Ljava/lang/String;
    goto :goto_0

    .line 360
    :cond_1
    const-string v6, "group_id"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_groupId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_groupId":Ljava/lang/String;
    goto :goto_0

    .line 363
    :cond_2
    const-string v6, "group_management_type"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    sget-object v6, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v4

    goto :goto_0

    .line 366
    :cond_3
    const-string v6, "group_type"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    sget-object v6, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamcommon/GroupType;

    move-result-object v5

    goto :goto_0

    .line 369
    :cond_4
    const-string v6, "is_member"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 370
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_isMember":Ljava/lang/Boolean;
    check-cast v11, Ljava/lang/Boolean;

    .restart local v11    # "f_isMember":Ljava/lang/Boolean;
    goto :goto_0

    .line 372
    :cond_5
    const-string v6, "is_owner"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 373
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "f_isOwner":Ljava/lang/Boolean;
    check-cast v12, Ljava/lang/Boolean;

    .restart local v12    # "f_isOwner":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 375
    :cond_6
    const-string v6, "same_team"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 376
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "f_sameTeam":Ljava/lang/Boolean;
    check-cast v13, Ljava/lang/Boolean;

    .restart local v13    # "f_sameTeam":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 378
    :cond_7
    const-string v6, "group_external_id"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 379
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_groupExternalId":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "f_groupExternalId":Ljava/lang/String;
    goto/16 :goto_0

    .line 381
    :cond_8
    const-string v6, "member_count"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 382
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_memberCount":Ljava/lang/Long;
    check-cast v10, Ljava/lang/Long;

    .restart local v10    # "f_memberCount":Ljava/lang/Long;
    goto/16 :goto_0

    .line 385
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 388
    .end local v14    # "field":Ljava/lang/String;
    :cond_a
    if-nez v2, :cond_b

    .line 389
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"group_name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_b
    if-nez v3, :cond_c

    .line 392
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"group_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 394
    :cond_c
    if-nez v4, :cond_d

    .line 395
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"group_management_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 397
    :cond_d
    if-nez v5, :cond_e

    .line 398
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"group_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 400
    :cond_e
    if-nez v11, :cond_f

    .line 401
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"is_member\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 403
    :cond_f
    if-nez v12, :cond_10

    .line 404
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"is_owner\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 406
    :cond_10
    if-nez v13, :cond_11

    .line 407
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"same_team\" missing."

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 409
    :cond_11
    new-instance v1, Lcom/dropbox/core/v2/sharing/GroupInfo;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct/range {v1 .. v10}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    .line 414
    .local v1, "value":Lcom/dropbox/core/v2/sharing/GroupInfo;
    if-nez p2, :cond_12

    .line 415
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 417
    :cond_12
    return-object v1

    .line 412
    .end local v1    # "value":Lcom/dropbox/core/v2/sharing/GroupInfo;
    .end local v2    # "f_groupName":Ljava/lang/String;
    .end local v3    # "f_groupId":Ljava/lang/String;
    .end local v4    # "f_groupManagementType":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .end local v5    # "f_groupType":Lcom/dropbox/core/v2/teamcommon/GroupType;
    .end local v9    # "f_groupExternalId":Ljava/lang/String;
    .end local v10    # "f_memberCount":Ljava/lang/Long;
    .end local v11    # "f_isMember":Ljava/lang/Boolean;
    .end local v12    # "f_isOwner":Ljava/lang/Boolean;
    .end local v13    # "f_sameTeam":Ljava/lang/Boolean;
    :cond_13
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GroupInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/GroupInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 306
    if-nez p3, :cond_0

    .line 307
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 309
    :cond_0
    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$000(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 311
    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$100(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 313
    const-string v0, "group_management_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$200(Lcom/dropbox/core/v2/sharing/GroupInfo;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 315
    const-string v0, "group_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 317
    const-string v0, "is_member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 319
    const-string v0, "is_owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 321
    const-string v0, "same_team"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$300(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "group_external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$400(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 327
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$500(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "member_count"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$600(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 331
    :cond_2
    if-nez p3, :cond_3

    .line 332
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 334
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
    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/GroupInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GroupInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
