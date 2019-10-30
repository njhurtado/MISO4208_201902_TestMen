.class Lcom/dropbox/core/v2/users/BasicAccount$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "BasicAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/BasicAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/BasicAccount;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 14
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v13, 0x0

    .line 355
    .local v13, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 356
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v13

    .line 359
    :cond_0
    if-nez v13, :cond_11

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "f_accountId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 362
    .local v2, "f_name":Lcom/dropbox/core/v2/users/Name;
    const/4 v3, 0x0

    .line 363
    .local v3, "f_email":Ljava/lang/String;
    const/4 v10, 0x0

    .line 364
    .local v10, "f_emailVerified":Ljava/lang/Boolean;
    const/4 v9, 0x0

    .line 365
    .local v9, "f_disabled":Ljava/lang/Boolean;
    const/4 v11, 0x0

    .line 366
    .local v11, "f_isTeammate":Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 367
    .local v7, "f_profilePhotoUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 368
    .local v8, "f_teamMemberId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_9

    .line 369
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    .line 370
    .local v12, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 371
    const-string v4, "account_id"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_accountId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_accountId":Ljava/lang/String;
    goto :goto_0

    .line 374
    :cond_1
    const-string v4, "name"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    sget-object v4, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    check-cast v2, Lcom/dropbox/core/v2/users/Name;

    .restart local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    goto :goto_0

    .line 377
    :cond_2
    const-string v4, "email"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_email":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_email":Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_3
    const-string v4, "email_verified"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "f_emailVerified":Ljava/lang/Boolean;
    check-cast v10, Ljava/lang/Boolean;

    .restart local v10    # "f_emailVerified":Ljava/lang/Boolean;
    goto :goto_0

    .line 383
    :cond_4
    const-string v4, "disabled"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 384
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_disabled":Ljava/lang/Boolean;
    check-cast v9, Ljava/lang/Boolean;

    .restart local v9    # "f_disabled":Ljava/lang/Boolean;
    goto :goto_0

    .line 386
    :cond_5
    const-string v4, "is_teammate"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 387
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "f_isTeammate":Ljava/lang/Boolean;
    check-cast v11, Ljava/lang/Boolean;

    .restart local v11    # "f_isTeammate":Ljava/lang/Boolean;
    goto :goto_0

    .line 389
    :cond_6
    const-string v4, "profile_photo_url"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_profilePhotoUrl":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "f_profilePhotoUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 392
    :cond_7
    const-string v4, "team_member_id"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 393
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_teamMemberId":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "f_teamMemberId":Ljava/lang/String;
    goto/16 :goto_0

    .line 396
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 399
    .end local v12    # "field":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 400
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"account_id\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 402
    :cond_a
    if-nez v2, :cond_b

    .line 403
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"name\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_b
    if-nez v3, :cond_c

    .line 406
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"email\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_c
    if-nez v10, :cond_d

    .line 409
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"email_verified\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 411
    :cond_d
    if-nez v9, :cond_e

    .line 412
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"disabled\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_e
    if-nez v11, :cond_f

    .line 415
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"is_teammate\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_f
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/users/BasicAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v0, "value":Lcom/dropbox/core/v2/users/BasicAccount;
    if-nez p2, :cond_10

    .line 423
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 425
    :cond_10
    return-object v0

    .line 420
    .end local v0    # "value":Lcom/dropbox/core/v2/users/BasicAccount;
    .end local v1    # "f_accountId":Ljava/lang/String;
    .end local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    .end local v3    # "f_email":Ljava/lang/String;
    .end local v7    # "f_profilePhotoUrl":Ljava/lang/String;
    .end local v8    # "f_teamMemberId":Ljava/lang/String;
    .end local v9    # "f_disabled":Ljava/lang/Boolean;
    .end local v10    # "f_emailVerified":Ljava/lang/Boolean;
    .end local v11    # "f_isTeammate":Ljava/lang/Boolean;
    :cond_11
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No subtype found that matches tag: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/BasicAccount;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/BasicAccount;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/users/BasicAccount;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 323
    if-nez p3, :cond_0

    .line 324
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 326
    :cond_0
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 328
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 330
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 332
    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 334
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 336
    const-string v0, "is_teammate"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 338
    iget-object v0, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "profile_photo_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 342
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 346
    :cond_2
    if-nez p3, :cond_3

    .line 347
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 349
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
    .line 318
    check-cast p1, Lcom/dropbox/core/v2/users/BasicAccount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->serialize(Lcom/dropbox/core/v2/users/BasicAccount;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
